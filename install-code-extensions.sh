#!/bin/bash

# Composer-1  wrote this entire code.

# Get the script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# File containing the list of extensions
EXTENSIONS_FILE="$SCRIPT_DIR/vscode/extensions.txt"

# Check if the extensions file exists
if [[ ! -f "$EXTENSIONS_FILE" ]]; then
  echo "Extensions file not found: $EXTENSIONS_FILE"
  exit 1
fi

# Loop through each line in the file and install the extension
while IFS= read -r extension || [[ -n "$extension" ]]; do
  if [[ -n "$extension" && ! "$extension" =~ ^# ]]; then
    echo "Installing extension: $extension"
    
    # Check if a .vsix file exists for this extension
    # Try to find a matching .vsix file (extension ID might be in the filename)
    vsix_file=$(find "$SCRIPT_DIR" -maxdepth 1 -name "*${extension}*.vsix" -type f | head -n 1)
    
    if [[ -n "$vsix_file" && -f "$vsix_file" ]]; then
      echo "  Found local .vsix file: $vsix_file"
      cursor --install-extension "$vsix_file"
    else
      echo "  Installing from marketplace..."
      cursor --install-extension "$extension"
    fi
  fi
done < "$EXTENSIONS_FILE"

echo "All extensions installed."
