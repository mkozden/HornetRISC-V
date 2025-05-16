import csv

REGISTER_MAPPING = {
    # Integer registers
    'zero': 'x0', 'ra': 'x1', 'sp': 'x2', 'gp': 'x3', 'tp': 'x4',
    't0': 'x5', 't1': 'x6', 't2': 'x7', 's0': 'x8', 'fp': 'x8',
    's1': 'x9', 'a0': 'x10', 'a1': 'x11', 'a2': 'x12', 'a3': 'x13',
    'a4': 'x14', 'a5': 'x15', 'a6': 'x16', 'a7': 'x17', 's2': 'x18',
    's3': 'x19', 's4': 'x20', 's5': 'x21', 's6': 'x22', 's7': 'x23',
    's8': 'x24', 's9': 'x25', 's10': 'x26', 's11': 'x27', 't3': 'x28',
    't4': 'x29', 't5': 'x30', 't6': 'x31',
    
    # Floating-point registers
    'ft0': 'f0', 'ft1': 'f1', 'ft2': 'f2', 'ft3': 'f3', 'ft4': 'f4',
    'ft5': 'f5', 'ft6': 'f6', 'ft7': 'f7', 'fs0': 'f8', 'fs1': 'f9',
    'fa0': 'f10', 'fa1': 'f11', 'fa2': 'f12', 'fa3': 'f13', 'fa4': 'f14',
    'fa5': 'f15', 'fa6': 'f16', 'fa7': 'f17', 'fs2': 'f18', 'fs3': 'f19',
    'fs4': 'f20', 'fs5': 'f21', 'fs6': 'f22', 'fs7': 'f23', 'fs8': 'f24',
    'fs9': 'f25', 'fs10': 'f26', 'fs11': 'f27', 'ft8': 'f28', 'ft9': 'f29',
    'ft10': 'f30', 'ft11': 'f31'
}

def normalize_hex(value):
    """Ensure consistent hex string format with 0x prefix and lowercase"""
    if not isinstance(value, str):
        return ""
    
    value = value.strip().lower()
    
    # Remove existing 0x if present
    if value.startswith('0x'):
        value = value[2:]
    
    # Check if valid hex digits remain
    if all(c in '0123456789abcdef' for c in value):
        return '0x' + value
    return ""

def horizontal_merge_with_comparison(file1, file2, output_file):
    with open(file1, 'r') as f1, open(file2, 'r') as f2, \
         open(output_file, 'w', newline='') as out_file:
        
        reader1 = csv.DictReader(f1)
        reader2 = csv.DictReader(f2)
        
        # Create output fields
        fieldnames = (
            [f'file1_{f}' for f in reader1.fieldnames] +
            [f'file2_{f}' for f in reader2.fieldnames] +
            ['standardized_register', 'standardized_register_value', 
             'register_match']
        )
        
        writer = csv.DictWriter(out_file, fieldnames=fieldnames)
        writer.writeheader()
        
        for row1, row2 in zip(reader1, reader2):
            new_row = {}
            
            # Copy all original fields
            for field in reader1.fieldnames:
                new_row[f'file1_{field}'] = row1.get(field, '')
            for field in reader2.fieldnames:
                new_row[f'file2_{field}'] = row2.get(field, '')
            
            # Process registers
            file1_reg = row1.get('Register', '').lower()
            file1_val = normalize_hex(row1.get('Register_Value', ''))
            
            # Process file2's gpr
            file2_gpr = row2.get('gpr', '')
            standardized_reg = ''
            standardized_val = ''
            
            if ':' in file2_gpr:
                reg_name, reg_value = file2_gpr.split(':', 1)
                standardized_reg = REGISTER_MAPPING.get(reg_name.lower(), '').lower()
                standardized_val = normalize_hex(reg_value)
            
            # Perform exact string comparisons
            reg_match = 'False'
            val_match = 'False'
            
            if file1_reg and standardized_reg:
                reg_match = str(file1_reg == standardized_reg)
            
            if file1_val and standardized_val:
                val_match = str(file1_val == standardized_val)
            
            # Add results
            new_row.update({
                'standardized_register': standardized_reg,
                'standardized_register_value': standardized_val,
                'register_match': reg_match
            })
            
            writer.writerow(new_row)

# Usage
horizontal_merge_with_comparison('deneme.csv', 'spike_deneme.csv', 'combined.csv')
