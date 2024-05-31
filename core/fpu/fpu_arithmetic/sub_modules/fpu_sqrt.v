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


wire [26:0] sqrt_sig;
wire is_exp_odd = is_subnormal ? 1'b0: !in_exp0;
sqrt_24 sqrt_24(clk, reset, start, is_exp_odd, in_sig, sqrt_done, sqrt_sig);


wire [4:0] lzc_for_subnorm;
lzc27 lzc27(.x(sqrt_sig), .z(lzc_for_subnorm));

wire [26:0] sqrt_norm_sig;
assign sqrt_norm_sig = sqrt_sig << lzc_for_subnorm;
assign sqrt_proNorm_sig = is_subnormal ? sqrt_norm_sig : sqrt_sig;
assign sqrt_proNorm_exp = is_subnormal ? exp_half - lzc_for_subnorm : exp_half;

assign uf = is_subnormal ?  !sqrt_norm_sig[26] : 1'b0; // if hidden bit is 0 then, underflow. Normal inputs can't set underflow flag.



endmodule