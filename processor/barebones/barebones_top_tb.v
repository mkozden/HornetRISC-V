`timescale 1ns/1ps

module barebones_top_tb();

reg reset_i, clk_i;
wire irq_ack_o;
reg meip_i;
reg [15:0] fast_irq_i;
integer i;
barebones_wb_top uut(.reset_i(reset_i), .clk_i(clk_i), .meip_i(meip_i), .fast_irq_i(fast_irq_i), .irq_ack_o(irq_ack_o));

//100 MHz clock
always begin
clk_i = 1'b0; #12.5; clk_i = 1'b1; #12.5;
end

initial begin
//uncomment the program you want to simulate
//remove the " ../../test/memory_contents/ " parts if you are using Vivado.
//$readmemh("../../test/memory_contents/bubble_sort_irq.data",uut.memory.mem);
//$readmemh("../../test/memory_contents/bubble_sort.data",uut.memory.mem);
//$readmemh("../../test/memory_contents/aes_test.data",uut.memory.mem);
//$readmemh("soft_float.data",uut.memory.mem);
reset_i = 1'b0; fast_irq_i = 16'b0; meip_i = 1'b0;
for (i = 0; i < uut.memory.RAM_DEPTH; i = i + 1) begin
    uut.memory.mem[i] = {uut.memory.DATA_WIDTH{1'b0}};  // Initialize to 0
end
#200;
reset_i = 1'b1;
$readmemh("fputest2.data",uut.memory.mem); //read data after reset, because reset initializes memory to 0

//interrupt signals, arbitrarily generated. uncomment if you need to.
/*
#2100; meip_i=1'b1; 
#400;  meip_i=1'b1;
#400;  meip_i=1'b1; 
#400;  meip_i=1'b1;
#850;  meip_i=1'b1;
#316;  meip_i=1'b1;
#763;  meip_i=1'b1;
#152;  meip_i=1'b1;
#761;  meip_i=1'b1;
#252;  meip_i=1'b1;*/
end

//this always block imitates an interrupt controller. uncomment if you are using machine external interrupt.
/*
always @(posedge clk_i)
begin
	if(irq_ack_o)
		meip_i = 1'b0;
end*/

endmodule

