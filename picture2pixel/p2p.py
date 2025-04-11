#  Adapted from https://github.com/gu0y1/picture2pixel/wiki/Tutorial
# %% 


import os
import subprocess

# Directories for Input/Output
wd = os.path.dirname(os.path.abspath(__file__))
input_dir = 'input'  # Modify if needed
output_dir = 'output'  # Modify if needed

# Parameters for picture2pixel library
num_frames = 4
width = 96
height = 64
svd_r = 0

if not os.path.exists(output_dir):
    os.makedirs(output_dir)

for i in range(num_frames):  
    image_name = f'{i:03d}.png'
    image_path = os.path.join(input_dir, image_name)

    command = [
        'python', '-m', 'picture2pixel.convert2pixel', 
        image_path, str(width), str(height), str(svd_r), output_dir
    ]
    
    subprocess.run(command)

print("All images converted successfully using to .p2p!")


def generate_code(input_folder, output_file):
    with open(output_file, 'w') as outfile:
        for i in range(num_frames):  # Replace ??? with the number of frames you want to convert
            p2p_filename = f"{i:03}.p2p"
            p2p_path = os.path.join(input_folder, p2p_filename)
            if os.path.isfile(p2p_path):
                with open(p2p_path, 'r') as infile:
                    content = infile.read()
                if i == 0:
                    outfile.write(f"if (frame_count == {i}) begin\n")
                else:
                    outfile.write(f"else if (frame_count == {i}) begin\n")
                outfile.write(content)
                outfile.write("end\n")
            else:
                print(f"File {p2p_filename} does not exist in {input_folder}")

# Directories for Input/Output
input_folder = "output"
output_file = "output.txt"

generate_code(input_folder, output_file)

# open output.txt with default text editor (windows only)
os.startfile(output_file)
