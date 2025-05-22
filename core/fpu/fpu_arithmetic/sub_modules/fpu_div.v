module fpu_div
(   input        clk,
    input        reset,
    input        div_start,
    input [8:0]  preNorm_exp,
    input        is_exp_underFlow,
    input [23:0] sig_A,
    input [23:0] sig_B,
   output [26:0] div_proNorm_sig,
   output [7:0]  div_proNorm_exp,
   output        div_rdy,
   output        OF_from_proNorm,
   output        UF_from_proNorm
);


wire[49:0] Dividend;
wire[49:0] Divisor;
wire[4:0]  offSetA, offSetB;

lzc27 lzcsig_A(.x({1'b0, sig_A,2'b11}), .z(offSetA));
lzc27 lzcsig_B(.x({1'b0, sig_B,2'b11}), .z(offSetB));
assign Dividend = sig_A << 26 + (offSetA - 1);
assign Divisor  = {26'b0, sig_B};


// denormolized division out
wire [26:0] div_out_sig;



// signal required for rounding




sigDiv sigDiv(.clk(clk), .start(div_start), .reset(reset), .offSetB(offSetB), .dividend(Dividend), .divisor(Divisor), .rdy(div_rdy), .div_out(div_out_sig));

divNormalizer norm_div(.inSig(div_out_sig), .inExp(preNorm_exp), .is_exp_underFlow(is_exp_underFlow), .offSetA(offSetA), .offSetB(offSetB), .outSig(div_proNorm_sig), .outExp(div_proNorm_exp), .of(OF_from_proNorm), .uf(UF_from_proNorm));

endmodule


















module divNormalizer
(
    input wire[26:0]  inSig,
    input wire[8:0]   inExp,
    input wire        is_exp_underFlow,
    input wire[4:0]   offSetA,
    input wire[4:0]   offSetB,
   output wire[26:0]  outSig,
   output wire[7:0]   outExp,
   output wire        of,
   output wire        uf
);


wire[4:0] zeroCount;
reg [8:0] ExpTemp;
reg[26:0] SigTemp;
wire[7:0] inExp_2C = ~inExp + 1;

wire overflow;
reg  underflow;

assign overflow = is_exp_underFlow ? 1'b0 :
                  ExpTemp[8]       ? 1'b1 :
                  ExpTemp[7:0] > 8'd254 ? 1'b1 :
                  1'b0;

assign of = overflow;
assign uf = underflow;

wire norm_underflow;

assign outExp = ExpTemp[7:0];
lzc27 lcz(.x(inSig), .z(zeroCount));

assign norm_underflow = ({3'b0,offSetA} > inExp);


assign outSig = SigTemp;
        
always @(*)// normalization
begin
    if (!is_exp_underFlow)
    begin
        if(norm_underflow) begin //This case takes precedence over all else, since offsetA is used in almost all of them
            ExpTemp = 8'b0;
            SigTemp = inSig >> (offSetA - inExp); //If subtracting offsetA from exp would underflow it, instead set exp to 0 and shift sig by offsetA-inExp
            underflow = 1'b1;
        end
        else if (inSig[26] == 1'b1) // if mantissa carry is 1 
        begin
            ExpTemp = inExp + (offSetB  - 1) - (offSetA - 1);
            SigTemp = inSig;
            underflow = 1'b0; 
        end
       
        else if (inExp == 1 | inExp <= zeroCount)
        begin
            
            ExpTemp = 8'b0;
            SigTemp = inSig << inExp - 1;
            underflow = 1'b1;
            
        end
        else
        begin
            ExpTemp = inExp - zeroCount + (offSetB  - 1) - (offSetA - 1) ;
            SigTemp = inSig << zeroCount;
            underflow = 1'b0; 
        end  
    end
    else
    begin
        //SigTemp        = inSig >> inExp_2C + 1;
        SigTemp        = inSig >> inExp_2C + 1 + (offSetA - 1); //Probably wrong, added due to the addition of offsetA


        if(SigTemp[26]) begin
            ExpTemp = 1;
            underflow = 1'b0;
        end
        else begin
            ExpTemp = 0;
            underflow = 1'b1;
        end
    end
    
end
endmodule