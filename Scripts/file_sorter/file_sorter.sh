#This script sorts files and move them to appropriate directories

#!/bin/bash

echo "Please enter the location:"
read inputValue1

echo "Please enter the desination location :"
read inputValue2

# Define the source directory
SOURCE_DIR="$inputValue1"

# Define the destination directory
DEST_DIR="$inputValue2"

# Create the destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Move files based on extension
for file in "$SOURCE_DIR"/*; do
    if [ -f "$file" ]; then
        # Get the file extension
        extension="${file##*.}"
        
        # Define the destination folder based on the extension
        case "$extension" in
            "txt")
                folder="$DEST_DIR/text"
                ;;
            "jpg" | "jpeg" | "png")
                folder="$DEST_DIR/images"
                ;;
            "mp3" | "wav")
                folder="$DEST_DIR/audio"
                ;;
            "doc" | "docx" | "pdf" | "xls" | "xlsx")
                folder="$DEST_DIR/documents"
                ;;
            *)
                folder="$DEST_DIR/other"
                ;;
        esac
        
        # Create the destination folder if it doesn't exist
        mkdir -p "$folder"
        
        # Move the file to the destination folder
        mv "$file" "$folder"
    fi
done
