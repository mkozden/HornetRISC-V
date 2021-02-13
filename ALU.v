`timescale 1ns/10ps

module ALU(	input [31:0] src1,
		input [31:0] src2,
		input [3:0]  func1,
		input [1:0]  func2,
		
		output reg [31:0] alu_out);

wire [4:0] shamt;
assign shamt = src2[4:0];

always @*
begin
	case(func1)
		4'b0000 : alu_out = src1+src2; //add
		4'b0001 : alu_out = src1-src2; //subtract
		4'b0010 : alu_out = src1 ^ src2; //XOR
		4'b0011 : alu_out = src1 | src2; //OR 

		4'b0100 : //AND 
		begin
			case(func2)
				2'b00 : alu_out = src1 & src2;
				2'b01 : alu_out = ~src1 & src2;
				2'b10 : alu_out = src1 & ~src2;
				default : alu_out = src1 & src2;
			endcase
		end 
		
		4'b0101 : alu_out = (src1 < src2) ? 32'd1 : 32'd0; //set-less-than (unsigned)
		4'b0110 : alu_out = ($signed(src1) < $signed(src2)) ? 32'd1 : 32'd0; //set-less-than (signed)
		4'b0111 : alu_out = src1 << shamt; //shift left	
		4'b1000 : alu_out = src1 >> shamt; //shift right	
		4'b1001 : alu_out = src1 >>> shamt; //shift right arithmetical
		4'b1010 : alu_out = (src1 == src2) ? 32'd1 : 32'd0; // set if equal
		4'b1011 : alu_out = (src1 == src2) ? 32'd0 : 32'd1; // set if not equal
		4'b1100 : alu_out = (src1 >= src2) ? 32'd1 : 32'd0; // set if greater or equal (unsigned)
		4'b1101 : alu_out = ($signed(src1) >= $signed(src2)) ? 32'd1 : 32'd0; // set if greater or equal (signed)
		4'b1110 : alu_out = (src1 + 4); // PC+4
		
		4'b1111 : //pass
		begin
			case(func2[0])
				1'b0: alu_out = src1;
				1'b1: alu_out = src2;
			endcase
		end  
	endcase
end

endmodule
