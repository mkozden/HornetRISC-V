module fpu_top
(
    // inputs
    input        clk,
    input        reset,
    input        start,
    input  [4:0] op,
    input  [2:0] rounding_mode,
    input  [2:0] csr_dynamic_rounding_mode,
    input [31:0] A,
    input [31:0] B,
    input        rs2_lsb,
    // outputs
    output [31:0] fpu_arith_out,
    output        done,
    output        overflow,
    output        underflow,
    output        invalid,
    output        inexact,
    output        div_by_zero
);

wire in_sel, reg_AB_en, f2_valid;
wire [31:0] in_A;
wire [31:0] in_B;
wire        in_rs2_lsb;
wire [2:0]  in_round_override;

reg [31:0] reg_A;
reg [31:0] reg_B;
reg        reg_rs2_lsb;
reg [2:0]  reg_round_override;

// Static-vs-dynamic rounding mode resolution, moved here from
// fpu_arithmetic_top so the resolved value can be latched alongside A/B:
// F2 logic must see the cycle-1 value even if the CSR changes mid-op.
wire [2:0] round_override;
assign round_override = (rounding_mode == 3'b111) ? csr_dynamic_rounding_mode : rounding_mode;

assign in_A              = in_sel ? A            : reg_A;
assign in_B              = in_sel ? B            : reg_B;
assign in_rs2_lsb        = in_sel ? rs2_lsb       : reg_rs2_lsb;
assign in_round_override = in_sel ? round_override : reg_round_override;

fpu_arithmetic_top fpu_arithmetic_top(
    .clk(clk),
    .reset(reset),
    .start(start),
    .op(op),
    .round_override(in_round_override),
    .A(in_A),
    .B(in_B),
    .rs2_lsb(in_rs2_lsb),
    .f2_valid(f2_valid),
    .fpu_arith_out(fpu_arith_out),
    .done(done),
    .overflow(overflow),
    .underflow(underflow),
    .invalid(invalid),
    .inexact(inexact),
    .div_by_zero(div_by_zero)
);


fpu_top_ctrl fpu_top_ctrl(
    .clk(clk),
    .reset(reset),
    .start(start),
    .done(done),
    .in_sel(in_sel),
    .reg_AB_en(reg_AB_en),
    .f2_valid(f2_valid)
);


always @ (posedge clk or negedge reset) begin
    if(!reset) begin
        reg_A              <= 32'b0;
        reg_B              <= 32'b0;
        reg_rs2_lsb        <= 1'b0;
        reg_round_override <= 3'b0;
    end

    else begin
        if (reg_AB_en) begin
            reg_A              <= A;
            reg_B              <= B;
            reg_rs2_lsb        <= rs2_lsb;
            reg_round_override <= round_override;
        end
    end
end
endmodule
