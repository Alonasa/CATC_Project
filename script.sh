
#!/bin/bash
# Author: Alona Skrypnyk
# Date: 16/04/2025
# Description: Script for grouping
# and executing marked commands

# Execution script result file
echo "Start new file generation..."

OUTPUT_FILE="alonaSkrypnyk.txt"

# Clear file if it's already exists
>"$OUTPUT_FILE"

#Script for execution command "date"
#Append command name to the required file


echo "Date: " >> "$OUTPUT_FILE"
#Append result of date command to the file
date >> "$OUTPUT_FILE"
#Append empty line after command execution to make file look better
echo "" >> "$OUTPUT_FILE"

#Script for execution command "hostname"
echo "Hostname: " >> "$OUTPUT_FILE"
hostname >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

#Script for command "arch"
echo "Arch: " >> "$OUTPUT_FILE"
arch >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

#Script for command "uname -a"
echo "Uname -a: " >> "$OUTPUT_FILE"
uname -a >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

#Script for command "uptime"
echo "Uptime: " >> "$OUTPUT_FILE"
sudo uptime >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"


#Script for command "whoami"
echo "Whoami: " >> "$OUTPUT_FILE"
whoami >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

#Script for command "who"
echo "Who: " >> "$OUTPUT_FILE"
who >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"


#Script for command "w"
echo "W: " >> "$OUTPUT_FILE"
w >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"


#Script for command "top"
echo "Top 1 time: " >> "$OUTPUT_FILE"
top -b -n 1 >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"


#Script for command "history"
echo "History: " >> "$OUTPUT_FILE"
history >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

echo ""
echo "File is ready! For open file print cat $OUTPUT_FILE in terminal"
