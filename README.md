# CATC Project by Alona Skrypnyk

A small collection of Bash scripts and artifacts created as part of CATC practice. The project demonstrates:
- Running and grouping common Linux commands from a single script and saving the output to a report file.
- Building an interactive salary progression table generator.
- Capturing screenshots of terminal tasks and results.

## Repository structure
- scripts/script.sh — runs a set of system/utility commands and appends their results to alonaSkrypnyk.txt.
- scripts/salary-table-gen.sh — interactive script that generates a year-by-year salary table based on your inputs.
- alonaSkrypnyk.txt — a sample output file produced by scripts/script.sh (kept in repo as an example).
- screenshots/ — images referenced in the tasks (Q2.1–Q2.4 folders).
- README.md — this file.

## What was implemented
1. Utility commands report (script.sh)
   - Author: Alona Skrypnyk
   - Date: 16/04/2025
   - Purpose: Group and run several commands, write their labeled outputs into a single file (alonaSkrypnyk.txt) for easy review.
   - Commands executed and saved:
     - date, hostname, arch, uname -a
     - uptime (with sudo if needed)
     - whoami, who, w
     - top -b -n 1 (one snapshot in batch mode)
     - history (shell history dump)
   - The script clears/overwrites the output file at the beginning, adds section titles, and adds blank lines to improve readability.

2. Salary table generator (salary-table-gen.sh)
   - Author: Alona Skrypnyk
   - Date: 18/04/2025
   - Purpose: Ask for current salary, number of points (years), and annual increment; optionally double the increment for managers; then print a formatted table of expected salary by year.
   - Key behaviors:
     - Validates that numeric fields are not empty and contain only digits.
     - Asks whether the user is a manager (y/yes or n/no). If yes, it doubles the increment.
     - Uses current_year=2025 to label the table rows.
     - Prints a simple ASCII table with Year and Expected salary columns.

## Prerequisites
- Bash (the scripts use #!/bin/bash).
- Standard GNU/Linux userland tools available in PATH (date, hostname, arch, uname, uptime, whoami, who, w, top, history).
- sudo privileges may be required for some commands (e.g., uptime depending on system configuration). If sudo prompts for a password in non-interactive scenarios, run the script in a terminal where you can enter it, or remove sudo before uptime if your system permits it.

## How to run
From the project root or the scripts directory:

1) Generate the system report file
- Make the script executable (first time only):
  chmod +x scripts/script.sh
- Run it:
  ./scripts/script.sh
- Result: A file named alonaSkrypnyk.txt will be created/overwritten in the project root with labeled outputs.

2) Generate a salary progression table
- Make the script executable (first time only):
  chmod +x scripts/salary-table-gen.sh
- Run it and answer prompts:
  ./scripts/salary-table-gen.sh
- Example prompts:
  - Enter your starting salary and the number of points on the salary scale (e.g., 50000 5)
  - Enter numeric salary increment (e.g., 2000)
  - Are you manager? Input yes or no
- Output: A simple ASCII table listing Year and Expected salary for each point.

## Example (report file excerpt)
- The alonaSkrypnyk.txt in the repo shows a real run, including sections like:
  - Date, Hostname, Arch
  - Uname -a
  - Uptime
  - Whoami, Who, W
  - Top 1 time (batch snapshot)
  - History

Note: history output depends on the shell and environment. It will reflect the current user session where the script is executed.

## Screenshots
- Kept under screenshots/ and grouped by task:
  - screenshots/Q2.1/*.png
  - screenshots/Q2.2/*.png
  - screenshots/Q2.3/*.png
  - screenshots/Q2.4/*.png

