module fpu_top_ctrl
(
    input clk,
    input reset,
    input start,
    input done,
    output reg in_sel,
    output reg reg_AB_en,
    output reg f2_valid,
    output reg f3_valid
);


parameter FIRST = 2'b00, SECOND = 2'b01, THIRD = 2'b10;

reg [1:0] current_state, next_state;


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
            f2_valid = 1'b0;
            f3_valid = 1'b0;
            next_state = start ? SECOND : FIRST;
        end
        SECOND: begin
            in_sel = 1'b0;
            reg_AB_en = 1'b0;
            f2_valid = 1'b1;
            f3_valid = 1'b0;
            if(start)
                if(done)
                    next_state = FIRST;
                else
                    next_state = THIRD;
            else
                next_state = FIRST;
        end
        THIRD: begin
            in_sel = 1'b0;
            reg_AB_en = 1'b0;
            f2_valid = 1'b0;
            f3_valid = 1'b1;
            if(start)
                if(done)
                    next_state = FIRST;
                else
                    next_state = THIRD;
            else
                next_state = FIRST;
        end
        default: begin
            in_sel = 1'b1;
            reg_AB_en = 1'b1;
            f2_valid = 1'b0;
            f3_valid = 1'b0;
            next_state = FIRST;
        end

    endcase
end


endmodule
