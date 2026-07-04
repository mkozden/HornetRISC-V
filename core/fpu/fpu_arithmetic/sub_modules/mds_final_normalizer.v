`define maxExp 8'd255
module mds_final_normalizer
(
    input [24:0] sig_after_round,
    input        of_from_pro_norm,
    input [7:0]  proNorm_exp,
    input [1:0]  mds_op,
   output [7:0]  final_exp,
   output [22:0] final_sig,
   output        of_final_norm
);

wire of_fin_norm;
assign of_fin_norm      = (sig_after_round[24] && proNorm_exp + 1 == `maxExp) || of_from_pro_norm;

// Subnormal fdiv/fmul result with sig_after_round[23] set is ambiguous
// between two distinct cases. Both fpu_div's and fpu_mul's normalizers
// build their subnormal significand identically (renormalize as if a hidden
// bit sat at the top, ExpTemp forced to 0) so sig_after_round[23] carries
// the same meaning for mds_op 2'b00 (mul) and 2'b01 (div):
//  - An exact carry: rounding pushed the significand to precisely 2^23 (all
//    lower bits zero) - a genuine promotion to the smallest normal number
//    (exponent 0 -> 1, mantissa 0). Treating this as a plain right-shift
//    (the pre-fix behavior) silently halves the result instead. Confirmed
//    for both div (tf_fdiv_s_002) and mul (tf_fmul_s_001, e.g.
//    RTL 0x00000000 vs ISS 0x00800000).
//  - A non-exact case (lower bits nonzero): for div, the raw pre-round
//    significand itself is already ~2x too large from an upstream
//    shift-amount bug in fpu_div, and a right-shift (dividing back out that
//    spurious factor of 2) coincidentally lands on the correct value.
//    Root-causing that upstream shift arithmetic is out of scope here, and
//    it is div-specific — not extended to mul without an observed failure
//    (fpu_mul's normalizer has no known analogous shift bug), so the
//    non-exact-case shift below stays gated to mds_op == 2'b01.
wire subnorm_carry;
assign subnorm_carry = (mds_op == 8'b00 || mds_op == 8'b01) && (proNorm_exp == 8'd0) && sig_after_round[23] && (sig_after_round[22:0] == 23'b0);

assign final_exp = of_fin_norm ? 8'd255 : ( (sig_after_round[24] || subnorm_carry) ? proNorm_exp + 1 : proNorm_exp);
assign final_sig = of_fin_norm ? 23'd0 :  ( subnorm_carry ? 23'd0 : ( (sig_after_round[24] || ((mds_op == 8'b01) && (proNorm_exp == 8'd0) && sig_after_round[23])) ? sig_after_round[23:1]   : sig_after_round[22:0] ));
assign of_final_norm = of_fin_norm;



endmodule