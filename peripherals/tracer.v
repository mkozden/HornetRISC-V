module tracer(input clk_i,
                input valid,
                input [31:0] pc,
                input [31:0] instr,
                input [4:0] reg_addr,
                input [31:0] reg_data,
                input is_load, is_store, is_float,
                input [31:0] mem_addr,
                input [31:0] mem_data);
// This module is used to trace the execution of the processor. It writes the PC, instruction, register address, register data, memory write enable, memory address and memory data to a file.


integer file_pointer;
initial begin
file_pointer = $fopen("../../../../../trace.log", "w"); //The file is normally located in <vivado-dir>\HornetRISCV-vivado.sim\sim_1\behav\xsim, so let's use relative path to move it to the main folder
    forever begin
        @(posedge valid); //This is required otherwise testbench ignores the update signal
        if (is_store) begin
            $fwrite(file_pointer, "0x%8h (0x%8h) mem 0x%8h 0x%8h", pc, instr, mem_addr, mem_data);
        end
        else begin
            if (!is_float) begin
                if (reg_addr == 0) begin
                    $fwrite(file_pointer, "0x%8h (0x%8h)", pc, instr);
                end else begin
                    if (reg_addr > 9) begin
                        $fwrite(file_pointer, "0x%8h (0x%8h) x%0d 0x%8h", pc, instr, reg_addr, reg_data);
                        if (is_load) begin
                            $fwrite(file_pointer, " mem 0x%8h", mem_addr);
                        end
                    end else begin
                        $fwrite(file_pointer, "0x%8h (0x%8h) x%0d  0x%8h", pc, instr, reg_addr, reg_data);
                        if (is_load) begin
                            $fwrite(file_pointer, " mem 0x%8h", mem_addr);
                        end
                    end
                end
            end
            else begin
                if (reg_addr > 9) begin
                    $fwrite(file_pointer, "0x%8h (0x%8h) f%0d 0x%8h", pc, instr, reg_addr, reg_data);
                    if (is_load) begin
                        $fwrite(file_pointer, " mem 0x%8h", mem_addr);
                    end
                end else begin
                    $fwrite(file_pointer, "0x%8h (0x%8h) f%0d  0x%8h", pc, instr, reg_addr, reg_data);
                    if (is_load) begin
                        $fwrite(file_pointer, " mem 0x%8h", mem_addr);
                    end
                end
            end
        end
        $fwrite(file_pointer, "\n");
    end
end

endmodule