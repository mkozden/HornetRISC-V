`timescale 1ns/1ps

module top_module_tb();

reg reset_i, clk_i, wen_i, meip_i;
reg [31:0] instr_i;
reg [10:0] addr_i;
wire irq_ack_o;

top_module uut(.reset_i(reset_i), .clk_i(clk_i), .instr_i(instr_i), .addr_i(addr_i), .wen_i(wen_i), .meip_i(meip_i), .irq_ack_o(irq_ack_o));

always begin
clk_i = 1'b0; #5; clk_i = 1'b1; #5;
end

initial begin
reset_i = 1'b0; wen_i = 1'b0; meip_i = 1'b0;


//bubble irq

instr_i = 32'h2A000113; addr_i = 11'd0; #10; 
instr_i = 32'h00010433; addr_i = 11'd4; #10; 
instr_i = 32'h0F80006F; addr_i = 11'd8; #10; 
instr_i = 32'hFD010113; addr_i = 11'd12; #10; 
instr_i = 32'h02812623; addr_i = 11'd16; #10; 
instr_i = 32'h03010413; addr_i = 11'd20; #10; 
instr_i = 32'hFCA42E23; addr_i = 11'd24; #10; 
instr_i = 32'hFCB42C23; addr_i = 11'd28; #10; 
instr_i = 32'hFE042623; addr_i = 11'd32; #10; 
instr_i = 32'hFE042423; addr_i = 11'd36; #10; 
instr_i = 32'h0AC0006F; addr_i = 11'd40; #10; 
instr_i = 32'hFE842783; addr_i = 11'd44; #10; 
instr_i = 32'h00279793; addr_i = 11'd48; #10; 
instr_i = 32'hFDC42703; addr_i = 11'd52; #10; 
instr_i = 32'h00F707B3; addr_i = 11'd56; #10; 
instr_i = 32'h0007A703; addr_i = 11'd60; #10; 
instr_i = 32'hFE842783; addr_i = 11'd64; #10; 
instr_i = 32'h00178793; addr_i = 11'd68; #10; 
instr_i = 32'h00279793; addr_i = 11'd72; #10; 
instr_i = 32'hFDC42683; addr_i = 11'd76; #10; 
instr_i = 32'h00F687B3; addr_i = 11'd80; #10; 
instr_i = 32'h0007A783; addr_i = 11'd84; #10; 
instr_i = 32'h06E7D863; addr_i = 11'd88; #10; 
instr_i = 32'hFE842783; addr_i = 11'd92; #10; 
instr_i = 32'h00279793; addr_i = 11'd96; #10; 
instr_i = 32'hFDC42703; addr_i = 11'd100; #10; 
instr_i = 32'h00F707B3; addr_i = 11'd104; #10; 
instr_i = 32'h0007A783; addr_i = 11'd108; #10; 
instr_i = 32'hFEF42223; addr_i = 11'd112; #10; 
instr_i = 32'hFE842783; addr_i = 11'd116; #10; 
instr_i = 32'h00178793; addr_i = 11'd120; #10; 
instr_i = 32'h00279793; addr_i = 11'd124; #10; 
instr_i = 32'hFDC42703; addr_i = 11'd128; #10; 
instr_i = 32'h00F70733; addr_i = 11'd132; #10; 
instr_i = 32'hFE842783; addr_i = 11'd136; #10; 
instr_i = 32'h00279793; addr_i = 11'd140; #10; 
instr_i = 32'hFDC42683; addr_i = 11'd144; #10; 
instr_i = 32'h00F687B3; addr_i = 11'd148; #10; 
instr_i = 32'h00072703; addr_i = 11'd152; #10; 
instr_i = 32'h00E7A023; addr_i = 11'd156; #10; 
instr_i = 32'hFE842783; addr_i = 11'd160; #10; 
instr_i = 32'h00178793; addr_i = 11'd164; #10; 
instr_i = 32'h00279793; addr_i = 11'd168; #10; 
instr_i = 32'hFDC42703; addr_i = 11'd172; #10; 
instr_i = 32'h00F707B3; addr_i = 11'd176; #10; 
instr_i = 32'hFE442703; addr_i = 11'd180; #10; 
instr_i = 32'h00E7A023; addr_i = 11'd184; #10; 
instr_i = 32'hFEC42783; addr_i = 11'd188; #10; 
instr_i = 32'h00178793; addr_i = 11'd192; #10; 
instr_i = 32'hFEF42623; addr_i = 11'd196; #10; 
instr_i = 32'hFE842783; addr_i = 11'd200; #10; 
instr_i = 32'h00178793; addr_i = 11'd204; #10; 
instr_i = 32'hFEF42423; addr_i = 11'd208; #10; 
instr_i = 32'hFD842783; addr_i = 11'd212; #10; 
instr_i = 32'hFFF78793; addr_i = 11'd216; #10; 
instr_i = 32'hFE842703; addr_i = 11'd220; #10; 
instr_i = 32'hF4F746E3; addr_i = 11'd224; #10; 
instr_i = 32'hFEC42783; addr_i = 11'd228; #10; 
instr_i = 32'hF2079CE3; addr_i = 11'd232; #10; 
instr_i = 32'h00000013; addr_i = 11'd236; #10; 
instr_i = 32'h00000013; addr_i = 11'd240; #10; 
instr_i = 32'h02C12403; addr_i = 11'd244; #10; 
instr_i = 32'h03010113; addr_i = 11'd248; #10; 
instr_i = 32'h00008067; addr_i = 11'd252; #10; 
instr_i = 32'hFD010113; addr_i = 11'd256; #10; 
instr_i = 32'h02112623; addr_i = 11'd260; #10; 
instr_i = 32'h02812423; addr_i = 11'd264; #10; 
instr_i = 32'h03010413; addr_i = 11'd268; #10; 
instr_i = 32'h24002823; addr_i = 11'd272; #10; 
instr_i = 32'h000010B7; addr_i = 11'd276; #10; 
instr_i = 32'h80008093; addr_i = 11'd280; #10; 
instr_i = 32'h30046073; addr_i = 11'd284; #10; 
instr_i = 32'h3040A073; addr_i = 11'd288; #10; 
instr_i = 32'h00000297; addr_i = 11'd292; #10; 
instr_i = 32'h07C28293; addr_i = 11'd296; #10; 
instr_i = 32'hFD428293; addr_i = 11'd300; #10; 
instr_i = 32'h00229293; addr_i = 11'd304; #10; 
instr_i = 32'h0012E293; addr_i = 11'd308; #10; 
instr_i = 32'h30529073; addr_i = 11'd312; #10; 
instr_i = 32'h1EC00793; addr_i = 11'd316; #10; 
instr_i = 32'h0007A803; addr_i = 11'd320; #10; 
instr_i = 32'h0047A503; addr_i = 11'd324; #10; 
instr_i = 32'h0087A583; addr_i = 11'd328; #10; 
instr_i = 32'h00C7A603; addr_i = 11'd332; #10; 
instr_i = 32'h0107A683; addr_i = 11'd336; #10; 
instr_i = 32'h0147A703; addr_i = 11'd340; #10; 
instr_i = 32'h0187A783; addr_i = 11'd344; #10; 
instr_i = 32'hFD042A23; addr_i = 11'd348; #10; 
instr_i = 32'hFCA42C23; addr_i = 11'd352; #10; 
instr_i = 32'hFCB42E23; addr_i = 11'd356; #10; 
instr_i = 32'hFEC42023; addr_i = 11'd360; #10; 
instr_i = 32'hFED42223; addr_i = 11'd364; #10; 
instr_i = 32'hFEE42423; addr_i = 11'd368; #10; 
instr_i = 32'hFEF42623; addr_i = 11'd372; #10; 
instr_i = 32'hFD440793; addr_i = 11'd376; #10; 
instr_i = 32'h00700593; addr_i = 11'd380; #10; 
instr_i = 32'h00078513; addr_i = 11'd384; #10; 
instr_i = 32'hE89FF0EF; addr_i = 11'd388; #10; 
instr_i = 32'h00000793; addr_i = 11'd392; #10; 
instr_i = 32'h00078513; addr_i = 11'd396; #10; 
instr_i = 32'h02C12083; addr_i = 11'd400; #10; 
instr_i = 32'h02812403; addr_i = 11'd404; #10; 
instr_i = 32'h03010113; addr_i = 11'd408; #10; 
instr_i = 32'h00008067; addr_i = 11'd412; #10; 
instr_i = 32'h0140006F; addr_i = 11'd416; #10; 
instr_i = 32'h00000013; addr_i = 11'd420; #10; 
instr_i = 32'h00000013; addr_i = 11'd424; #10; 
instr_i = 32'h00000013; addr_i = 11'd428; #10; 
instr_i = 32'h00000013; addr_i = 11'd432; #10; 
instr_i = 32'hFF010113; addr_i = 11'd436; #10; 
instr_i = 32'h00812623; addr_i = 11'd440; #10; 
instr_i = 32'h00E12423; addr_i = 11'd444; #10; 
instr_i = 32'h00F12223; addr_i = 11'd448; #10; 
instr_i = 32'h01010413; addr_i = 11'd452; #10; 
instr_i = 32'h25002783; addr_i = 11'd456; #10; 
instr_i = 32'h00178713; addr_i = 11'd460; #10; 
instr_i = 32'h24E02823; addr_i = 11'd464; #10; 
instr_i = 32'h00000013; addr_i = 11'd468; #10; 
instr_i = 32'h00C12403; addr_i = 11'd472; #10; 
instr_i = 32'h00812703; addr_i = 11'd476; #10; 
instr_i = 32'h00412783; addr_i = 11'd480; #10; 
instr_i = 32'h01010113; addr_i = 11'd484; #10; 
instr_i = 32'h30200073; addr_i = 11'd488; #10; 
instr_i = 32'h000000C3; addr_i = 11'd492; #10; 
instr_i = 32'h0000000E; addr_i = 11'd496; #10; 
instr_i = 32'h000000B0; addr_i = 11'd500; #10; 
instr_i = 32'h00000067; addr_i = 11'd504; #10; 
instr_i = 32'h00000036; addr_i = 11'd508; #10; 
instr_i = 32'h00000020; addr_i = 11'd512; #10; 
instr_i = 32'h00000080; addr_i = 11'd516; #10; 


//csr instr
/*
instr_i = 32'h000010b7;  addr_i = 11'd0; #100;
instr_i = 32'h80008093;  addr_i = 11'd4; #100;
instr_i = 32'h30046073;  addr_i = 11'd8; #100;     	
instr_i = 32'h3040a073;  addr_i = 11'd12; #100;   
instr_i = 32'h00000093;  addr_i = 11'd16; #100; 
instr_i = 32'h02000113;  addr_i = 11'd20; #100;         	
instr_i = 32'h00000193;  addr_i = 11'd24; #100;         	
instr_i = 32'h00108093;  addr_i = 11'd28; #100;         	
instr_i = 32'h00208463;  addr_i = 11'd32; #100;         	
instr_i = 32'hff9ff06f;  addr_i = 11'd36; #100;         	


instr_i = 32'h00000093;  addr_i = 11'd40; #100;         	
instr_i = 32'hff1ff06f;  addr_i = 11'd44; #100;   

instr_i = 32'h00118193;  addr_i = 11'd48; #100;   
instr_i = 32'h30200073;  addr_i = 11'd52; #100;       	

instr_i = 32'hff5ff06f;  addr_i = 11'd60; #100;*/


//multiplication
/*
instr_i = 32'h24000113; addr_i = 11'd0; #100; 
instr_i = 32'h00010433; addr_i = 11'd4; #100; 
instr_i = 32'h0A40006F; addr_i = 11'd8; #100; 
instr_i = 32'hFD010113; addr_i = 11'd12; #100; 
instr_i = 32'h02812623; addr_i = 11'd16; #100; 
instr_i = 32'h03010413; addr_i = 11'd20; #100; 
instr_i = 32'hFCA42E23; addr_i = 11'd24; #100; 
instr_i = 32'hFCB42C23; addr_i = 11'd28; #100; 
instr_i = 32'hFE042623; addr_i = 11'd32; #100; 
instr_i = 32'h00100793; addr_i = 11'd36; #100; 
instr_i = 32'hFEF42423; addr_i = 11'd40; #100; 
instr_i = 32'h00100793; addr_i = 11'd44; #100; 
instr_i = 32'hFEF42223; addr_i = 11'd48; #100; 
instr_i = 32'h0540006F; addr_i = 11'd52; #100; 
instr_i = 32'hFD842703; addr_i = 11'd56; #100; 
instr_i = 32'hFE442783; addr_i = 11'd60; #100; 
instr_i = 32'h00F777B3; addr_i = 11'd64; #100; 
instr_i = 32'h02078063; addr_i = 11'd68; #100; 
instr_i = 32'hFE842783; addr_i = 11'd72; #100; 
instr_i = 32'hFFF78793; addr_i = 11'd76; #100; 
instr_i = 32'hFDC42703; addr_i = 11'd80; #100; 
instr_i = 32'h00F717B3; addr_i = 11'd84; #100; 
instr_i = 32'hFEC42703; addr_i = 11'd88; #100; 
instr_i = 32'h00F707B3; addr_i = 11'd92; #100; 
instr_i = 32'hFEF42623; addr_i = 11'd96; #100; 
instr_i = 32'hFE442783; addr_i = 11'd100; #100; 
instr_i = 32'h00179793; addr_i = 11'd104; #100; 
instr_i = 32'hFEF42223; addr_i = 11'd108; #100; 
instr_i = 32'hFE842783; addr_i = 11'd112; #100; 
instr_i = 32'h00178793; addr_i = 11'd116; #100; 
instr_i = 32'hFEF42423; addr_i = 11'd120; #100; 
instr_i = 32'hFD842783; addr_i = 11'd124; #100; 
instr_i = 32'hFE442703; addr_i = 11'd128; #100; 
instr_i = 32'h00E7E863; addr_i = 11'd132; #100; 
instr_i = 32'hFE442783; addr_i = 11'd136; #100; 
instr_i = 32'hFA07D6E3; addr_i = 11'd140; #100; 
instr_i = 32'h0080006F; addr_i = 11'd144; #100; 
instr_i = 32'h00000013; addr_i = 11'd148; #100; 
instr_i = 32'hFEC42783; addr_i = 11'd152; #100; 
instr_i = 32'h00078513; addr_i = 11'd156; #100; 
instr_i = 32'h02C12403; addr_i = 11'd160; #100; 
instr_i = 32'h03010113; addr_i = 11'd164; #100; 
instr_i = 32'h00008067; addr_i = 11'd168; #100; 
instr_i = 32'hFE010113; addr_i = 11'd172; #100; 
instr_i = 32'h00112E23; addr_i = 11'd176; #100; 
instr_i = 32'h00812C23; addr_i = 11'd180; #100; 
instr_i = 32'h02010413; addr_i = 11'd184; #100; 
instr_i = 32'h000027B7; addr_i = 11'd188; #100; 
instr_i = 32'hC5A78793; addr_i = 11'd192; #100; 
instr_i = 32'hFEF42623; addr_i = 11'd196; #100; 
instr_i = 32'h5B700793; addr_i = 11'd200; #100; 
instr_i = 32'hFEF42423; addr_i = 11'd204; #100; 
instr_i = 32'hFE842583; addr_i = 11'd208; #100; 
instr_i = 32'hFEC42503; addr_i = 11'd212; #100; 
instr_i = 32'hF35FF0EF; addr_i = 11'd216; #100; 
instr_i = 32'hFEA42223; addr_i = 11'd220; #100; 
instr_i = 32'h00000793; addr_i = 11'd224; #100; 
instr_i = 32'h00078513; addr_i = 11'd228; #100; 
instr_i = 32'h01C12083; addr_i = 11'd232; #100; 
instr_i = 32'h01812403; addr_i = 11'd236; #100; 
instr_i = 32'h02010113; addr_i = 11'd240; #100; 
instr_i = 32'h00008067; addr_i = 11'd244; #100; */


//bubble sort
/*
instr_i = 32'h24000113; addr_i = 11'd0; #100; 
instr_i = 32'h00010433; addr_i = 11'd4; #100; 
instr_i = 32'h0F80006F; addr_i = 11'd8; #100; 
instr_i = 32'hFD010113; addr_i = 11'd12; #100; 
instr_i = 32'h02812623; addr_i = 11'd16; #100; 
instr_i = 32'h03010413; addr_i = 11'd20; #100; 
instr_i = 32'hFCA42E23; addr_i = 11'd24; #100; 
instr_i = 32'hFCB42C23; addr_i = 11'd28; #100; 
instr_i = 32'hFE042623; addr_i = 11'd32; #100; 
instr_i = 32'hFE042423; addr_i = 11'd36; #100; 
instr_i = 32'h0AC0006F; addr_i = 11'd40; #100; 
instr_i = 32'hFE842783; addr_i = 11'd44; #100; 
instr_i = 32'h00279793; addr_i = 11'd48; #100; 
instr_i = 32'hFDC42703; addr_i = 11'd52; #100; 
instr_i = 32'h00F707B3; addr_i = 11'd56; #100; 
instr_i = 32'h0007A703; addr_i = 11'd60; #100; 
instr_i = 32'hFE842783; addr_i = 11'd64; #100; 
instr_i = 32'h00178793; addr_i = 11'd68; #100; 
instr_i = 32'h00279793; addr_i = 11'd72; #100; 
instr_i = 32'hFDC42683; addr_i = 11'd76; #100; 
instr_i = 32'h00F687B3; addr_i = 11'd80; #100; 
instr_i = 32'h0007A783; addr_i = 11'd84; #100; 
instr_i = 32'h06E7D863; addr_i = 11'd88; #100; 
instr_i = 32'hFE842783; addr_i = 11'd92; #100; 
instr_i = 32'h00279793; addr_i = 11'd96; #100; 
instr_i = 32'hFDC42703; addr_i = 11'd100; #100; 
instr_i = 32'h00F707B3; addr_i = 11'd104; #100; 
instr_i = 32'h0007A783; addr_i = 11'd108; #100; 
instr_i = 32'hFEF42223; addr_i = 11'd112; #100; 
instr_i = 32'hFE842783; addr_i = 11'd116; #100; 
instr_i = 32'h00178793; addr_i = 11'd120; #100; 
instr_i = 32'h00279793; addr_i = 11'd124; #100; 
instr_i = 32'hFDC42703; addr_i = 11'd128; #100; 
instr_i = 32'h00F70733; addr_i = 11'd132; #100; 
instr_i = 32'hFE842783; addr_i = 11'd136; #100; 
instr_i = 32'h00279793; addr_i = 11'd140; #100; 
instr_i = 32'hFDC42683; addr_i = 11'd144; #100; 
instr_i = 32'h00F687B3; addr_i = 11'd148; #100; 
instr_i = 32'h00072703; addr_i = 11'd152; #100; 
instr_i = 32'h00E7A023; addr_i = 11'd156; #100; 
instr_i = 32'hFE842783; addr_i = 11'd160; #100; 
instr_i = 32'h00178793; addr_i = 11'd164; #100; 
instr_i = 32'h00279793; addr_i = 11'd168; #100; 
instr_i = 32'hFDC42703; addr_i = 11'd172; #100; 
instr_i = 32'h00F707B3; addr_i = 11'd176; #100; 
instr_i = 32'hFE442703; addr_i = 11'd180; #100; 
instr_i = 32'h00E7A023; addr_i = 11'd184; #100; 
instr_i = 32'hFEC42783; addr_i = 11'd188; #100; 
instr_i = 32'h00178793; addr_i = 11'd192; #100; 
instr_i = 32'hFEF42623; addr_i = 11'd196; #100; 
instr_i = 32'hFE842783; addr_i = 11'd200; #100; 
instr_i = 32'h00178793; addr_i = 11'd204; #100; 
instr_i = 32'hFEF42423; addr_i = 11'd208; #100; 
instr_i = 32'hFD842783; addr_i = 11'd212; #100; 
instr_i = 32'hFFF78793; addr_i = 11'd216; #100; 
instr_i = 32'hFE842703; addr_i = 11'd220; #100; 
instr_i = 32'hF4F746E3; addr_i = 11'd224; #100; 
instr_i = 32'hFEC42783; addr_i = 11'd228; #100; 
instr_i = 32'hF2079CE3; addr_i = 11'd232; #100; 
instr_i = 32'h00000013; addr_i = 11'd236; #100; 
instr_i = 32'h00000013; addr_i = 11'd240; #100; 
instr_i = 32'h02C12403; addr_i = 11'd244; #100; 
instr_i = 32'h03010113; addr_i = 11'd248; #100; 
instr_i = 32'h00008067; addr_i = 11'd252; #100; 
instr_i = 32'hFD010113; addr_i = 11'd256; #100; 
instr_i = 32'h02112623; addr_i = 11'd260; #100; 
instr_i = 32'h02812423; addr_i = 11'd264; #100; 
instr_i = 32'h03010413; addr_i = 11'd268; #100; 
instr_i = 32'h17400793; addr_i = 11'd272; #100; 
instr_i = 32'h0007A803; addr_i = 11'd276; #100; 
instr_i = 32'h0047A503; addr_i = 11'd280; #100; 
instr_i = 32'h0087A583; addr_i = 11'd284; #100; 
instr_i = 32'h00C7A603; addr_i = 11'd288; #100; 
instr_i = 32'h0107A683; addr_i = 11'd292; #100; 
instr_i = 32'h0147A703; addr_i = 11'd296; #100; 
instr_i = 32'h0187A783; addr_i = 11'd300; #100; 
instr_i = 32'hFD042A23; addr_i = 11'd304; #100; 
instr_i = 32'hFCA42C23; addr_i = 11'd308; #100; 
instr_i = 32'hFCB42E23; addr_i = 11'd312; #100; 
instr_i = 32'hFEC42023; addr_i = 11'd316; #100; 
instr_i = 32'hFED42223; addr_i = 11'd320; #100; 
instr_i = 32'hFEE42423; addr_i = 11'd324; #100; 
instr_i = 32'hFEF42623; addr_i = 11'd328; #100; 
instr_i = 32'hFD440793; addr_i = 11'd332; #100; 
instr_i = 32'h00700593; addr_i = 11'd336; #100; 
instr_i = 32'h00078513; addr_i = 11'd340; #100; 
instr_i = 32'hEB5FF0EF; addr_i = 11'd344; #100; 
instr_i = 32'h00000793; addr_i = 11'd348; #100; 
instr_i = 32'h00078513; addr_i = 11'd352; #100; 
instr_i = 32'h02C12083; addr_i = 11'd356; #100; 
instr_i = 32'h02812403; addr_i = 11'd360; #100; 
instr_i = 32'h03010113; addr_i = 11'd364; #100; 
instr_i = 32'h00008067; addr_i = 11'd368; #100; 
instr_i = 32'h000000C3; addr_i = 11'd372; #100; 
instr_i = 32'h0000000E; addr_i = 11'd376; #100; 
instr_i = 32'h000000B0; addr_i = 11'd380; #100; 
instr_i = 32'h00000067; addr_i = 11'd384; #100; 
instr_i = 32'h00000036; addr_i = 11'd388; #100; 
instr_i = 32'h00000020; addr_i = 11'd392; #100; 
instr_i = 32'h00000080; addr_i = 11'd396; #100; */
/*
instr_i = 32'h24000113; addr_i = 11'd0; #100; 
instr_i = 32'h00010433; addr_i = 11'd4; #100; 
instr_i = 32'h0040006F; addr_i = 11'd8; #100; 
instr_i = 32'hFD010113; addr_i = 11'd12; #100; 
instr_i = 32'h02812623; addr_i = 11'd16; #100; 
instr_i = 32'h03010413; addr_i = 11'd20; #100; 
instr_i = 32'h00100793; addr_i = 11'd24; #100; 
instr_i = 32'hFEF42623; addr_i = 11'd28; #100; 
instr_i = 32'hFE042423; addr_i = 11'd32; #100; 
instr_i = 32'hFE042023; addr_i = 11'd36; #100; 
instr_i = 32'hFE042223; addr_i = 11'd40; #100; 
instr_i = 32'h0380006F; addr_i = 11'd44; #100; 
instr_i = 32'hFE842783; addr_i = 11'd48; #100; 
instr_i = 32'hFCF42E23; addr_i = 11'd52; #100; 
instr_i = 32'hFEC42783; addr_i = 11'd56; #100; 
instr_i = 32'hFEF42023; addr_i = 11'd60; #100; 
instr_i = 32'hFEC42703; addr_i = 11'd64; #100; 
instr_i = 32'hFE842783; addr_i = 11'd68; #100; 
instr_i = 32'h00F707B3; addr_i = 11'd72; #100; 
instr_i = 32'hFEF42623; addr_i = 11'd76; #100; 
instr_i = 32'hFE042783; addr_i = 11'd80; #100; 
instr_i = 32'hFEF42423; addr_i = 11'd84; #100; 
instr_i = 32'hFE442783; addr_i = 11'd88; #100; 
instr_i = 32'h00178793; addr_i = 11'd92; #100; 
instr_i = 32'hFEF42223; addr_i = 11'd96; #100; 
instr_i = 32'hFE442703; addr_i = 11'd100; #100; 
instr_i = 32'h00900793; addr_i = 11'd104; #100; 
instr_i = 32'hFCE7D2E3; addr_i = 11'd108; #100; 
instr_i = 32'h00000793; addr_i = 11'd112; #100; 
instr_i = 32'h00078513; addr_i = 11'd116; #100; 
instr_i = 32'h02C12403; addr_i = 11'd120; #100; 
instr_i = 32'h03010113; addr_i = 11'd124; #100; 
instr_i = 32'h00008067; addr_i = 11'd128; #100; */


wen_i = 1'b1; #200;
reset_i = 1'b1;
#2000;
meip_i=1'b1; #400;
meip_i=1'b1; #400;
meip_i=1'b1; #400;
meip_i=1'b1; #600;
#250; meip_i=1'b1;
#316; meip_i=1'b1;
#763; meip_i=1'b1;
#152; meip_i=1'b1;
#761; meip_i=1'b1;
#252; meip_i=1'b1;
end

always @(posedge clk_i)
begin
	if(irq_ack_o)
		meip_i = 1'b0;
end

endmodule
