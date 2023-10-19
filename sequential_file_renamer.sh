#!/bin/bash

# Set the starting number for renaming
counter=522

# Specify the folder containing the PNG files
folder_path="/Users/jesses_fables/Documents/GitHub/tilez/tiles2/"

# Check if the folder exists
if [ -d "$folder_path" ]; then
    cd "$folder_path"

    # Iterate over each PNG file in the folder
    for file in *.png; do
        # Check if the file is a regular file
        if [ -f "$file" ]; then
            # Rename the file to the next number in the sequence
            mv "$file" "$counter.png"
            ((counter++))
        fi
    done

    echo "Files renamed successfully."
else
    echo "Folder not found: $folder_path"
fi
