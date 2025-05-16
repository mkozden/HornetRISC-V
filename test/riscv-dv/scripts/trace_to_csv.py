#!/usr/bin/env python3
import re
import csv
import argparse

def convert_log_to_csv(input_file, output_file):
    # Define regex patterns
    addr_pattern = re.compile(r'^(0x[0-9a-f]+)')
    instr_pattern = re.compile(r'\((0x[0-9a-f]+)\)')
    flag_pattern = re.compile(r'(c1_\w+)\s+(0x[0-9a-f]+)')
    reg_pattern = re.compile(r'([a-z]\d+|[a-z]+_\w+)\s+(0x[0-9a-f]+)(?!.*c1_\w+)')
    
    with open(input_file, 'r') as infile, open(output_file, 'w', newline='') as outfile:
        writer = csv.writer(outfile)
        # Write CSV header
        writer.writerow(['Address', 'Instruction', 'Flag', 'Flag Value', 'Register', 'Register Value'])
        
        # Skip the first line of the log file
        next(infile, None)  # None prevents StopIteration if file is empty
        
        for line in infile:
            line = line.strip()
            if not line:
                continue
                
            # Initialize variables
            address = instruction = flag = flag_value = register = reg_value = ''
            
            # Extract address
            if addr_match := addr_pattern.search(line):
                address = addr_match.group(1)
            
            # Extract instruction
            if instr_match := instr_pattern.search(line):
                instruction = instr_match.group(1)
            
            # Extract flag and its value
            if flag_match := flag_pattern.search(line):
                flag, flag_value = flag_match.groups()
            
            # Extract register and its value (excluding flags)
            if reg_match := reg_pattern.search(line):
                register, reg_value = reg_match.groups()
            
            # Write to CSV
            writer.writerow([address, instruction, flag, flag_value, register, reg_value])

def main():
    parser = argparse.ArgumentParser(description='Convert RISC-V trace log to CSV format')
    parser.add_argument('-l', '--log', required=True, help='Input log file')
    parser.add_argument('-o', '--output', required=True, help='Output CSV file')
    args = parser.parse_args()
    
    convert_log_to_csv(args.log, args.output)
    print(f"Successfully converted {args.log} to {args.output}")

if __name__ == '__main__':
    main()
