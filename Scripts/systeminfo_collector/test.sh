#!/bin/bash

# Set the directory path to analyze
directory="/home/aswin/Desktop/shell-scripting/Scripts/systeminfo_collector"

# Function to analyze file permissions
analyze_permissions() {
    echo "File Permissions Analysis Report:"
    echo "---------------------------------"
    echo

    # Iterate over the files in the directory
    while IFS= read -r file; do
        permissions=$(stat -c "%a" "$file")

        # Check if file permissions are insecure (world-readable or world-writable)
        if [[ $permissions == *"2"* || $permissions == *"3"* || $permissions == *"6"* || $permissions == *"7"* ]]; then
            echo "File: $file"
            echo "Permissions: $permissions"
            echo
        fi
    done < <(find "$directory" -type f)
}

# Start file permissions analysis
analyze_permissions
