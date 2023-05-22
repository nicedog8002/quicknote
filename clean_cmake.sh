#!/bin/bash

# Path to the directory containing cmake-build
directory="path/to/cmake-build"

# Check if the directory exists
if [ -d "$directory" ]; then
  # Loop through each subdirectory within cmake-build
  for subdirectory in "$directory"/*; do
    if [ -d "$subdirectory" ]; then
      echo "Cleaning $subdirectory..."
      # Remove the subdirectory and its contents
      rm -rf "$subdirectory"
    fi
  done
  echo "Cleanup complete."
else
  echo "Directory $directory does not exist."
fi

