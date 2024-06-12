# For ease of working with Verilog projects by Mehedi Hasan
# in windows use git bash to run this script

#!/bin/bash

# Get a list of directories
dirs=(*/)
# Present a menu to select a directory
select dir in "${dirs[@]}"; do
  if [[ -n $dir ]]; then
    cd "$dir"
    break
  fi
done

# Delete all .vcd and .out files in the selected directory
rm -f *.vcd *.out

# Try to find a file that matches the pattern *_tb.v
testbench_file=$(ls | grep -m 1 '_tb.v$')

# If a testbench file was found, extract the dump file name from it using Regex
if [[ -n $testbench_file ]]; then
  dump_file_name=$(grep -o '$dumpfile(".*\.vcd")' "$testbench_file" | cut -d'"' -f2 | sed 's/.vcd//')
else
  # If no testbench file was found, ask the user for the dump file name
  read -p "Enter the dump file name: " dump_file_name
fi

# Run iverilog and vvp
iverilog_files=(*.v)
iverilog -o output.out "${iverilog_files[@]}"
vvp output.out

# If a dump file name was specified, run gtkwave
if [[ -n $dump_file_name ]]; then
  gtkwave "$dump_file_name.vcd"
fi