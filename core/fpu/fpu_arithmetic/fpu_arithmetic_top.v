module fpu_arithmetic_top
(
    // inputs
    input        clk,
    input        reset,
    input        start,
    input  [4:0] op,
    input  [2:0] round_override, // resolved (static-vs-dynamic) rounding mode, latched at fpu_top for F1/F2 stability
    input [31:0] A,
    input [31:0] B,
    input        rs2_lsb,
    input [31:0] A_q,              // §8.2d: registered-only (= reg_A), for the misc lane only
    input [31:0] B_q,              // §8.2d: registered-only (= reg_B), for the misc lane only
    input        rs2_lsb_q,        // §8.2d: registered-only (= reg_rs2_lsb)
    input [2:0]  round_override_q, // §8.2d: registered-only (= reg_round_override)
    input        reg_AB_en,
    input        f2_valid,
    input        f3_valid,
    // outputs
    output [31:0] fpu_arith_out,
    output        done,
    output        overflow,
    output        underflow,
    output        invalid,
    output        inexact,
    output        div_by_zero

);
/*
       OP   |     operation
   5'b00000 |      FADD
   5'b00001 |      FSUB
   5'b00010 |      FMUL
   5'b00011 |      FDIV
   5'b01011 |      FSQRT
   5'b00100 |      FSGNJ, FSGNJN , FSGNJX
   5'b00101 |      FMIN, FMAX
   5'b11000 |      FCVT.W.S, FCVT.WU.S
   5'b11010 |      FCVT.S.W, FCVT.S.WU
   5'b10100 |      FEQ, FLT, FLE

*/

// decoder signals
wire       sign_A, sign_B;
wire [7:0] exp_A, exp_B, exp_A_tmp, exp_B_tmp, exp_A_for_sgninj, exp_B_for_sgninj;
wire[23:0] sig_A, sig_B;
wire       isSubnormalA, isSubnormalB;
wire       isZeroA, isZeroB;
wire       isInfA, isInfB, isSignalingA;
wire       isNaNA, isNaNB, isSignalingB;

fpu_decoder  decA(.in(A), .sign_o(sign_A), .exp_o(exp_A_tmp), .sig_o(sig_A), .isSubnormal(isSubnormalA), .isZero(isZeroA), .isInf(isInfA), .isNaN(isNaNA), .isSignaling(isSignalingA), .exp_o_for_sgninj(exp_A_for_sgninj));
fpu_decoder  decB(.in(B), .sign_o(sign_B), .exp_o(exp_B_tmp), .sig_o(sig_B), .isSubnormal(isSubnormalB), .isZero(isZeroB), .isInf(isInfB), .isNaN(isNaNB), .isSignaling(isSignalingB), .exp_o_for_sgninj(exp_B_for_sgninj));

// Add logic for sign injection
assign exp_A  = op == 5'b00100 ? exp_A_for_sgninj : exp_A_tmp;
assign exp_B  = op == 5'b00100 ? exp_B_for_sgninj : exp_B_tmp;

wire       isSignaling;
wire       isBothSubnorm;
assign isSignaling = isSignalingA | isSignalingB;
assign isBothSubnorm = isSubnormalA & isSubnormalB;

// ============================================================
// §8.2d: second decoder pair for the misc lane, fed from A_q/B_q
// (= reg_A/reg_B directly, no in_sel mux). This gives the misc-op
// cone (sgnj/min-max/cvt/compare/classify) a structurally registered
// source instead of a mux Vivado still has to time against IDEX even
// though the §8.2c f2_valid capture makes that path functionally
// false. Garbage in cycle 1 (previous op's latch contents) is
// harmless — f12_misc_* only captures at f2_valid, when reg_A/reg_B
// already hold the current op's operands.
// ============================================================
wire       sign_A_q, sign_B_q;
wire [7:0] exp_A_q_tmp, exp_B_q_tmp, exp_A_q_for_sgninj, exp_B_q_for_sgninj;
wire [7:0] exp_A_q, exp_B_q;
wire[23:0] sig_A_q, sig_B_q;
wire       isSubnormalA_q;
wire       isZeroA_q, isZeroB_q;
wire       isInfA_q, isInfB_q, isSignalingA_q, isSignalingB_q;
wire       isNaNA_q, isNaNB_q;

fpu_decoder  decA_q(.in(A_q), .sign_o(sign_A_q), .exp_o(exp_A_q_tmp), .sig_o(sig_A_q), .isSubnormal(isSubnormalA_q), .isZero(isZeroA_q), .isInf(isInfA_q), .isNaN(isNaNA_q), .isSignaling(isSignalingA_q), .exp_o_for_sgninj(exp_A_q_for_sgninj));
fpu_decoder  decB_q(.in(B_q), .sign_o(sign_B_q), .exp_o(exp_B_q_tmp), .sig_o(sig_B_q), .isSubnormal(), .isZero(isZeroB_q), .isInf(isInfB_q), .isNaN(isNaNB_q), .isSignaling(isSignalingB_q), .exp_o_for_sgninj(exp_B_q_for_sgninj));

assign exp_A_q = op == 5'b00100 ? exp_A_q_for_sgninj : exp_A_q_tmp;
assign exp_B_q = op == 5'b00100 ? exp_B_q_for_sgninj : exp_B_q_tmp;

wire isSignaling_q;
assign isSignaling_q = isSignalingA_q | isSignalingB_q;


// ADD-SUB signals

wire        overflow_add;
wire        underflow_add;
wire        invalid_add;
wire        inexact_add;
wire [31:0] add_sub_out;
wire        sub_op;
assign sub_op = op[0] ? 1'b1 : 1'b0;

fpu_add_sub fas(
    .clk(clk),
    .reset(reset),
    .reg_AB_en(reg_AB_en),
    .f2_en(f2_valid),
    .sign_A(sign_A),
    .sign_B(sign_B),
    .exp_A(exp_A_for_sgninj),
    .exp_B(exp_B_for_sgninj),
    .sig_A(sig_A),
    .sig_B(sig_B),
    .isZeroA(isZeroA),
    .isZeroB(isZeroB),
    .isInfA(isInfA),
    .isInfB(isInfB),
    .isNaNA(isNaNA),
    .isNaNB(isNaNB),
    .isSignaling(isSignaling),
    .sub_op(sub_op),
    .rounding_mode(round_override),
    .overflow(overflow_add),
    .underflow(underflow_add),
    .invalid(invalid_add),
    .inexact(inexact_add),
    .OUT(add_sub_out)
);


// MUL-DIV-SQRT signals

wire        mds_start;
wire        mds_done;
wire        overflow_mds;
wire        underflow_mds;
wire        invalid_mds;
wire        inexact_mds;
wire        div_by_zero_mds;
wire [31:0] mds_out;
wire [1:0]  mds_op;

assign mds_op = op[3:0] == 4'b1011 ? 2'b10 : // sqrt
                op[3:0] == 4'b0011 ? 2'b01 : // div
                                     2'b00 ; // mul

wire is_mds;
assign is_mds = (op == 5'b00010) | (op == 5'b00011) | (op == 5'b01011);

assign mds_start = start & is_mds;

fpu_mds_top fpu_mds_top(clk, mds_start, reset, round_override, isSubnormalA, isZeroA, isZeroB, isInfA, isInfB, isNaNA, isNaNB, isSignaling, sign_A, sign_B, exp_A, exp_B, sig_A, sig_B, mds_op, reg_AB_en, mds_out, mds_done, overflow_mds, underflow_mds, invalid_mds, inexact_mds, div_by_zero_mds);


// FPU-COMPARE signals
wire comp_out;
wire invalid_comp;
// round_override[1:0] is used  for compare function

fpu_compare fpu_compare(round_override_q[1:0], sign_A_q, sign_B_q, exp_A_q, exp_B_q, sig_A_q, sig_B_q, isNaNA_q, isNaNB_q, isZeroA_q, isZeroB_q, isSignaling_q, comp_out, invalid_comp);

//FPU-MIN_MAX signals
wire [31:0] min_max_out;
wire invalid_min_max;
// rounding mode's lsb is determine min or max operatin


fpu_min_max fpu_min_max(round_override_q[0], sign_A_q, sign_B_q, exp_A_q_for_sgninj, exp_B_q_for_sgninj, sig_A_q, sig_B_q, isInfA_q, isInfB_q, isNaNA_q, isNaNB_q, isSignaling_q, min_max_out, invalid_min_max);

//FPU-SIGN INJECTION signals
wire sign_O_inj;
// rounding mode's lsb is determine injection operation

fpu_sign_inj fpu_sign_inj(round_override_q[1:0], sign_A_q, sign_B_q, sign_O_inj);

//FPU-CONVERT TO INTEGER signals
wire is_exp_neg_q;
wire [31:0] cvt_to_int_out;
wire overflow_cvt_to_int;
assign is_exp_neg_q = exp_A_q[7] ? 1'b0 : (&exp_A_q[6:0] ? 1'b0 : 1'b1);
fpu_cvt_to_int fpu_cvt_to_int(rs2_lsb_q, is_exp_neg_q, round_override_q, isNaNA_q, isInfA_q, isZeroA_q, sign_A_q, exp_A_q, sig_A_q, cvt_to_int_out, overflow_cvt_to_int);


//FPU-CONVERT TO FLOAT signals
wire [31:0] cvt_to_float_out;
fpu_cvt_to_float fpu_cvt_to_float(rs2_lsb_q, round_override_q, A_q, cvt_to_float_out);

//FPU-CLASSIFIER signals
wire[9:0] classifier_out;

fpu_classifier fpu_classifier(sign_A_q, isSubnormalA_q, isZeroA_q, isInfA_q, isNaNA_q, isSignalingA_q, classifier_out);


// ============================================================
// F2/F3 register for the "simple" (single-cycle-class) ops:
// sgnj, min/max, cvt-to-int, cvt-to-float, compare, classify/fmv.
// These complete combinationally from decode; their muxed result and
// flag bits are sampled at the end of SECOND (f2_valid, §8.2c) rather
// than FIRST (reg_AB_en) — in cycle 2 in_sel is low, so this cone reads
// from the FPU's own reg_A/reg_B latch instead of the live forwarding
// mux, which drops the forwarding comparators/IDEX registers out of the
// done-cycle timing path. Value-identical either way (the latch holds).
// Read out in the done cycle (THIRD), alongside add_sub_out/mds_out.
// ============================================================

wire [31:0] misc_result;
assign misc_result = op == 5'b00100                                       ? {sign_O_inj, exp_A_q, sig_A_q[22:0]} : // sign injection
                      op == 5'b00101                                       ? min_max_out                          : // min, max
                      op == 5'b11000                                       ? cvt_to_int_out                       : // convert to int
                      op == 5'b11010                                       ? cvt_to_float_out                     : // convert to float
                      op == 5'b10100                                       ? {31'b0,comp_out}                     : // equ, lt, le
                      op == 5'b11100 & round_override_q[0]                  ? {22'b0,classifier_out}               : // classifier out
                   (op == 5'b11100 | op == 5'b11110) & !(|round_override_q) ? A_q                                  :
                      32'b0;

reg [31:0] f12_misc_result;
reg        f12_invalid_comp;
reg        f12_invalid_min_max;
reg        f12_overflow_cvt_to_int;

always @ (posedge clk or negedge reset) begin
    if(!reset) begin
        f12_misc_result         <= 32'b0;
        f12_invalid_comp        <= 1'b0;
        f12_invalid_min_max     <= 1'b0;
        f12_overflow_cvt_to_int <= 1'b0;
    end
    else if(f2_valid) begin
        f12_misc_result         <= misc_result;
        f12_invalid_comp        <= invalid_comp;
        f12_invalid_min_max     <= invalid_min_max;
        f12_overflow_cvt_to_int <= overflow_cvt_to_int;
    end
end


// exception flag assignments — every term is sampled from the F2 domain
// (fpu_add_sub's outputs are already F2-combinational, mds outputs are
// already registered/F2-aligned, and the misc-op flags come from the
// F1/F2 register above).

assign overflow    = op == 5'b00000 | op == 5'b00001 ? overflow_add          : // add, sub
                     is_mds                           ? overflow_mds          : // mul, div, sqrt
                     op == 5'b11000                   ? f12_overflow_cvt_to_int : // convert to int
                     1'b0;




assign underflow   = op == 5'b00000 | op == 5'b00001 ? underflow_add : // add, sub
                     is_mds                           ? underflow_mds : // mul, div, sqrt
                     1'b0;

assign invalid     = op == 5'b00000 | op == 5'b00001 ? invalid_add        : // add, sub
                     is_mds                           ? invalid_mds        : // mul, div, sqrt
                     op == 5'b00101                   ? f12_invalid_min_max : // min, max
                     op == 5'b10100                   ? f12_invalid_comp    : // equ, lt, le
                     1'b0;

assign inexact     = op == 5'b00000 | op == 5'b00001 ? inexact_add : // add, sub
                     is_mds                           ? inexact_mds : // mul, div, sqrt
                     1'b0;

assign div_by_zero = is_mds ? div_by_zero_mds : 1'b0; // mul, div, sqrt

// assignment of final output

assign done        = !start ? 1'b0 :
                     is_mds ? mds_done :
                     f3_valid;



assign fpu_arith_out = op == 5'b00000 | op == 5'b00001 ? add_sub_out      : // add, sub
                       is_mds                           ? mds_out          : // mul, div, sqrt
                       f12_misc_result                                    ; // sgnj, min/max, cvt, compare, classify/fmv

endmodule
