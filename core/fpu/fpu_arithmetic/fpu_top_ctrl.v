module fpu_top_ctrl
(
    input clk,
    input reset,
    input start,
    input [4:0] op,
    output reg in_sel,
    output reg reg_AB_en
);


parameter FIRST = 1'b0, SECOND = 1'b1;

reg current_state, next_state;


always @ (posedge clk or negedge reset) begin
    if(!reset)
        current_state <= FIRST;
    else
        current_state <= next_state;
end

always @* begin
    case(current_state)
        FIRST: begin
            in_sel = 1'b1;
            reg_AB_en = 1'b1;
            casez(op)
                5'b0001?, 5'b01011 : next_state = SECOND;
                default : next_state = FIRST;
            endcase
        end 
        SECOND: begin
            in_sel = 1'b0;
            reg_AB_en = 1'b0;
            if(start)
                next_state = SECOND;
            else 
                next_state = FIRST;
        end
    
    endcase
end


endmodule