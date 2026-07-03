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

// Subnormal fdiv result with sig_after_round[23] set is ambiguous between two
// distinct cases (both occur upstream in fpu_div's subnormal-underflow shift
// arithmetic, mds_op == 2'b01):
//  - An exact carry: rounding pushed the significand to precisely 2^23 (all
//    lower bits zero) - a genuine promotion to the smallest normal number
//    (exponent 0 -> 1, mantissa 0). Treating this as a plain right-shift
//    (the pre-fix behavior) silently halves the result instead.
//  - A non-exact case (lower bits nonzero): the raw pre-round significand
//    itself is already ~2x too large from upstream shift-amount arithmetic;
//    it is not a real carry/promotion, and a right-shift (dividing back out
//    that spurious factor of 2) coincidentally lands on the correct value.
//    Root-causing the upstream shift arithmetic is out of scope here; only
//    the exact-carry case gets the promotion treatment.
wire subnorm_div_carry;
assign subnorm_div_carry = (mds_op == 8'b01) && (proNorm_exp == 8'd0) && sig_after_round[23] && (sig_after_round[22:0] == 23'b0);

assign final_exp = of_fin_norm ? 8'd255 : ( (sig_after_round[24] || subnorm_div_carry) ? proNorm_exp + 1 : proNorm_exp);
assign final_sig = of_fin_norm ? 23'd0 :  ( subnorm_div_carry ? 23'd0 : ( (sig_after_round[24] || ((mds_op == 8'b01) && (proNorm_exp == 8'd0) && sig_after_round[23])) ? sig_after_round[23:1]   : sig_after_round[22:0] ));
assign of_final_norm = of_fin_norm;



endmodule