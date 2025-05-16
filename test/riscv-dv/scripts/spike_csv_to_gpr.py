#!/usr/bin/env python3
import csv
import argparse

def convert_reg_name(reg):
    """Convert register names: t5 → x5, ft3 → f3"""
    if reg.startswith('ft'):
        return reg.replace('ft', 'f')
    elif reg.startswith('t'):
        return reg.replace('t', 'x')
    return reg

def process_gpr_file(input_file, output_file):
    with open(input_file, 'r') as infile, open(output_file, 'w', newline='') as outfile:
        reader = csv.DictReader(infile)
        writer = csv.writer(outfile)
        
        # Write output headers
        writer.writerow(['pc', 'binary', 'register', 'register_value'])
        
        for row in reader:
            pc = row['pc']
            binary = row['binary']
            gpr_field = row.get('gpr', '')
            
            if gpr_field:
                for pair in gpr_field.split(','):
                    if ':' in pair:
                        reg, val = pair.split(':', 1)
                        converted_reg = convert_reg_name(reg)
                        writer.writerow([pc, binary, converted_reg, val])
                    else:
                        writer.writerow([pc, binary, '', ''])
            else:
                writer.writerow([pc, binary, '', ''])

def main():
    parser = argparse.ArgumentParser(description='Split GPR field into register/value columns')
    parser.add_argument('-i', '--input', required=True, help='Input CSV file with GPR field')
    parser.add_argument('-o', '--output', required=True, help='Output CSV file')
    args = parser.parse_args()
    
    process_gpr_file(args.input, args.output)
    print(f"Processed file saved to {args.output}")

if __name__ == '__main__':
    main()
