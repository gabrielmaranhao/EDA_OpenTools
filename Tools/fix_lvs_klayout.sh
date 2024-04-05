#!/bin/bash

# Check if the user has provided a filename
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Assign the filename provided by the user to a variable
filename="$1"

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "File '$filename' not found."
    exit 1
fi

# Modify line containing 'C.*cap_mim_2f0_m4m5_noshield' to replace 'c_length' with 'L'
sed -i '/C.*cap_mim_2f0_m4m5_noshield/s/c_length/L/' "$filename"

# Modify line containing 'C.*cap_mim_2f0_m4m5_noshield' to replace 'c_width' with 'W'
sed -i '/C.*cap_mim_2f0_m4m5_noshield/s/c_width/W/' "$filename"

# Modify line containing 'R.*ppoly' to replace 'r_width' with 'W'
sed -i '/R.*ppoly/s/r_width/W/' "$filename"

# Modify line containing 'R.*ppoly' to replace 'r_length' with 'L'
sed -i '/R.*ppoly/s/r_length/L/' "$filename"

# Modify line containing 'XC' to replace it with 'C'
sed -i 's/XC/C/g' "$filename"

# Modify line containing 'XR' to replace it with 'R'
sed -i 's/XR/R/g' "$filename"

echo "Modifications complete."

