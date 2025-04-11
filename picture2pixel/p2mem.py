#  %%
import os
from PIL import Image

def rgb888_to_rgb565(r, g, b):
    """Convert 8-bit RGB channels to 16-bit RGB565 format"""
    r_5 = (r >> 3) & 0x1F
    g_6 = (g >> 2) & 0x3F
    b_5 = (b >> 3) & 0x1F
    return (r_5 << 11) | (g_6 << 5) | b_5

def process_image(input_path, output_path):
    """Process a single PNG image to .mem file"""
    img = Image.open(input_path).convert('RGB')
    width, height = img.size
    
    if width != 96 or height != 64:
        print(f"Warning: Image {input_path} is not 96x64 (actual size: {width}x{height})")
    
    with open(output_path, 'w') as f:
        for y in range(height):
            for x in range(width):
                r, g, b = img.getpixel((x, y))
                rgb565 = rgb888_to_rgb565(r, g, b)
                # Write as 16-bit hex with leading zeros
                f.write(f"{rgb565:04X}\n")

def convert_mem_to_coe(input_mem, output_coe):
    """Convert simple .mem file to Vivado COE format"""
    with open(input_mem, 'r') as mem_file, open(output_coe, 'w') as coe_file:
        # Write COE header
        coe_file.write("memory_initialization_radix=16;\n")
        coe_file.write("memory_initialization_vector=\n")
        
        # Read all lines from .mem file
        lines = mem_file.readlines()
        
        # Write all but last line with commas
        for line in lines[:-1]:
            coe_file.write(f"{line.strip()},\n")
        
        # Write last line without comma
        if lines:  # Check if file wasn't empty
            coe_file.write(f"{lines[-1].strip()};\n")

def main():
    # Create output directory if it doesn't exist
    os.makedirs('output', exist_ok=True)
    
    # Process all images from 000.png to 003.png
    for i in range(4):
        input_filename = f"{i:03d}.png"
        output_filename = f"{i:03d}.mem"
        input_path = os.path.join('input', input_filename)
        output_path = os.path.join('output', output_filename)
        
        if os.path.exists(input_path):
            print(f"Processing {input_filename}...")
            process_image(input_path, output_path)
            print(f"Saved to {output_filename}")
        else:
            print(f"File {input_filename} not found in input directory")

    # concat all 4 files into one file
    with open('frames.mem', 'w') as outfile:
        for i in range(4):
            output_filename = f"{i:03d}.mem"
            output_path = os.path.join('output', output_filename)
            if os.path.exists(output_path):
                with open(output_path, 'r') as infile:
                    outfile.write(infile.read())
                print(f"Appended {output_filename} to output.mem")
            else:
                print(f"File {output_filename} not found in output directory")

    # convert frames.mem to frames.coe
    convert_mem_to_coe('frames.mem', 'frames.coe')

if __name__ == "__main__":
    main()