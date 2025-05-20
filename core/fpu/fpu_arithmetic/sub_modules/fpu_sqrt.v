module fpu_sqrt
    (   
        input         clk,  
        input         reset,  
        input         start,
        input         is_subnormal,
        input         in_exp0,
        input [7:0]   exp_half,
        input [23:0]  in_sig,
        output        sqrt_done,
        output [26:0] sqrt_proNorm_sig,
        output [7:0]  sqrt_proNorm_exp,
        output        uf
    );


wire [35:0] sqrt_sig;
wire is_exp_odd = is_subnormal ? 1'b0: !in_exp0;
sqrt_24 sqrt_24(clk, reset, start, is_exp_odd, in_sig, sqrt_done, sqrt_sig);


wire [5:0] lzc_for_subnorm;
lzc36 lzc36(.x(sqrt_sig), .z(lzc_for_subnorm));

wire [35:0] sqrt_norm_sig;
assign sqrt_norm_sig = sqrt_sig << lzc_for_subnorm;
assign sqrt_proNorm_sig = is_subnormal ? sqrt_norm_sig[35:9] : sqrt_sig[35:9];
assign sqrt_proNorm_exp = is_subnormal ? exp_half - lzc_for_subnorm : exp_half;

assign uf = is_subnormal ?  !sqrt_norm_sig[35] : 1'b0; // if hidden bit is 0 then, underflow. Normal inputs can't set underflow flag.
endmodule

module lzc36(
    input  wire [35:0] x,
    output wire [5:0]  z
);

wire      a0, a1, a2, a3;
wire[2:0] z0, z1, z2, z3;
wire[1:0] z4;
reg [2:0] temp;
wire[4:0] zINT;

// Instantiate lzc8s for 32 MSBs
lzc8 U0 (.x(x[35:28]), .a(a0), .z(z0));
lzc8 U1 (.x(x[27:20]), .a(a1), .z(z1));
lzc8 U2 (.x(x[19:12]), .a(a2), .z(z2));
lzc8 U3 (.x(x[11: 4]), .a(a3), .z(z3));

// Instantiate lzc4 for 4 LSBs
lzc4 U4 (.x(x[3:0]), .a(), .z(z4));

// Priority selection logic for upper 32 bits
always @(*) begin
    if (!a0)
        temp = z0;
    else if (!a1)
        temp = z1;
    else if (!a2)
        temp = z2;
    else if (!a3)
        temp = z3;
    else
        temp = 3'd0;  // all upper blocks zero, fallback
end

assign zINT[4] = a0 & a1;
assign zINT[3] = a0 & (~a1 | a2);  // same scheme as in lzc27
assign zINT[2:0] = temp;

// Final output: if all upper 32 bits are zero, add z4 (lower 4 bits count)
assign z = (a0 & a1 & a2 & a3) ? {1'b0, zINT} + z4 : {1'b0, zINT};
endmodule