#!/bin/bash

# Define the source and destination directories
source_dir=$(pwd)
destination_dir=$(dirname "${source_dir}")

# Loop through all the HTML files in the source directory
for file in "${source_dir}"/*.html; do
    # Check if the file exists in the destination directory and if it's newer than the version in the destination directory
    if [[ -e "${destination_dir}/$(basename "$file")" && "$file" -nt "${destination_dir}/$(basename "$file")" ]]; then
        # Copy the file to the destination directory
        cp "$file" "${destination_dir}/$(basename "$file")"
    # Check if the file does not exist in the destination directory
    elif [[ ! -e "${destination_dir}/$(basename "$file")" ]]; then
        # Copy the file to the destination directory
        cp "$file" "${destination_dir}/$(basename "$file")"
    fi
done
