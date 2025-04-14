# Functionanalyzer
This script was specifically created to extract functions list from Windows executables quickly and to compare them with a list that is maintained by mrd0x -> https://malapi.io/

Why? Many great tools, such as PeStudio, have this type of functionallity (even better than this), yet in VM Envrionments they take very long time to output functions section, since it has to initilize all the other analyses.
This narrows down the function to only exporting and giving a quick reference to the functions that you should watch out for when analyzing suspicious binaries and executables. 

## Requirments
Since Remnux is my go to VM for analyzing malware, the pedump bin is already available. If you should use this on any other platform, make sure to get the pedump package first -> https://github.com/zed-0xff/pedump

## Usage
Clone the repository, make sure malapi_function_names.txt is in the same path as the function_exporter.sh and launch the script.
You can expand the malapi_function_names.txt as much as you want. The output file matching_functions.txt is your final output.

`./function_exporter.sh ~/EXEPATH/FILE.exe`