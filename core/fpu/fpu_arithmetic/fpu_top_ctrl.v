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
    if(!reset) begin
        in_sel <= 1'b0;
        reg_AB_en <= 1'b0;
        current_state <= FIRST;
        next_state <= FIRST; //yanlis
    end
    else
        current_state <= next_state;
end

always @* begin
    case(current_state)
        FIRST: begin
            in_sel = 1'b1;
            reg_AB_en = 1'b1;
            if(start) begin //else'i ekle
                casez(op)
                    5'b0001?, 5'b01011 : next_state = SECOND; //5'b00000 ekledim
                    default : next_state = FIRST;
                endcase
            end
        end 
        SECOND: begin
            if ((op == 0'b00000) | (op == 0'b00100)) begin
                in_sel = 1'b1;
                reg_AB_en = 1'b1;
            end
            else begin
                in_sel = 1'b0;
                reg_AB_en = 1'b0;
            end
            if(start)
                next_state = SECOND;
            else 
                next_state = FIRST;
        end
    
    endcase
end


endmodule


