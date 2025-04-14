#!/bin/bash

if [ -z "$1" ] || [ ! -f "$1" ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

basename="${1##*/}" # Extracts the file name
filename="${basename%.*}" # Removes the extension
malapi_file="malapi_function_names.txt"

pedump -I "${1}" > imports.txt
awk 'NR > 3 {print $3}' imports.txt > "${filename}_functions.txt"
sort "${filename}_functions.txt" > "${filename}_functions_sorted.txt"
rm -f imports.txt
rm -f "${filename}_functions.txt"

if [ -f "$malapi_file" ]; then
	comm -12 "${filename}_functions_sorted.txt" malapi_function_names.txt > matching_functions.txt
else
	echo "MalAPI function file is missing in this Folder"
fi
