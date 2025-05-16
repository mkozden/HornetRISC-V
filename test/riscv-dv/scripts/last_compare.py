import pandas as pd

def check_columns_match(input_csv, output_csv):
    """
    Reads a CSV file, checks if two specified columns have matching values,
    and adds a new column indicating the matches.
    
    Args:
        input_csv (str): Path to the input CSV file.
        output_csv (str): Path to save the output CSV file.
    """
    # Read the CSV file
    df = pd.read_csv(input_csv)
    
    # Check if the required columns exist
    required_columns = ['file1_Register Value', 'standardized_register_value']
    for col in required_columns:
        if col not in df.columns:
            raise ValueError(f"Column '{col}' not found in the CSV file.")
    
    # Compare the two columns and create the new column
    df['matched_values'] = df['file1_Register Value'] == df['standardized_register_value']
    
    # Save the modified DataFrame to a new CSV file
    df.to_csv(output_csv, index=False)
    print(f"File saved successfully with matched values column at: {output_csv}")

# Example usage
input_file = 'combined.csv'  # Replace with your input file path
output_file = 'combined_last.csv'  # Replace with your desired output file path

check_columns_match(input_file, output_file)
