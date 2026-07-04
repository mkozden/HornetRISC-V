module multiplier_24 (input clk,
                      input reset,
                      input  [23:0] M_inA,
                      input  [23:0] M_inB,
                      output [47:0] P);

    // Vivado: pack the multiply into DSP48E1s. Standard attribute syntax —
    // ASIC tools ignore unknown attributes, so this is portable as-is.
    (* use_dsp = "yes" *)
    reg [47:0] P_reg;

    always @(posedge clk or negedge reset) begin
        if (!reset) P_reg <= 48'd0;
        else        P_reg <= M_inA * M_inB;
    end

    assign P = P_reg;
endmodule
