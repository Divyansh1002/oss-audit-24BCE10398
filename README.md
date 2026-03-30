# Open Source Audit — Python
**Open Source Software Capstone Project**

**Name:** Divyansh Goyal  
**Registration Number:** 24BCE10398  
**Course:** Open Source Software  
**Software Chosen:** Python  

---

## Project Description
The Open Source Audit. A capstone project for OSS NGMC Course. I have chosen Python as my software.
The goal of this project is to understand open source philosophy, licensing, Linux file structure, and basic shell scripting.

The report covers:
- Origin and philosophy of Python
- Python license (PSF License) and open source freedoms
- Linux footprint (where Python is stored in Linux)
- Python ecosystem and community
- Comparison between Python (open source) and MATLAB (proprietary)
- Shell scripting tasks related to Linux and open source

---

## Shell Scripts Included

Script 1 — System Identity Report

This script displays basic system information like a welcome screen. It shows:

Kernel version
Current user
Date and time
Python version
Linux distribution
Open source license information

Concepts used:

Variables
Command substitution
echo
Basic formatting

Run:

chmod +x script1.sh
./script1.sh

---

Script 2 — FOSS Package Inspector

This script checks whether Python is installed on the system. If installed, it shows:

Package name
Installation status
Version
Installation location
License information

It also prints a short note about the software using a case statement.

Concepts used:

if-then-else
case statement
which command
Command substitution

Run:

chmod +x script2.sh
./script2.sh

---

Script 3 — Disk and Permission Auditor

This script checks important system directories and displays:

Directory permissions
Owner and group
Directory size

It loops through directories like /etc, /var/log, /home, /usr/bin, and /tmp.
It also checks the Python directory specifically.

Concepts used:

for loop
if condition
ls -ld
du -sh
awk
cut

Run:

chmod +x script3.sh
./script3.sh

---

Script 4 — Log File Analyzer

This script creates a sample log file and then reads it line by line. It searches for a keyword (like "error"), counts how many matches are found, and prints the last few matching lines.

Concepts used:

while loop
if condition
grep
Counter variable
Command line argument
tail

Run:

chmod +x script4.sh
./script4.sh error

---

Script 5 — Open Source Manifesto Generator

This script asks the user three questions and generates a personalised open source manifesto. The output is saved to a text file and displayed on the screen.

Concepts used:

read (user input)
Variables
String concatenation
File writing using >
date command

Run:

chmod +x script5.sh
./script5.sh
Linux Commands Used in This Project

Some important Linux commands used in this project:

uname — shows kernel version
whoami — shows current user
date — shows date and time
grep — searches text
awk — extracts columns from text
cut — cuts specific fields
du — shows directory size
ls -ld — shows directory permissions
tail — shows last lines of a file
chmod — changes file permission

---

Conclusion

This project helped in understanding how open source software works not only from a technical perspective but also from a philosophical perspective. Python is a successful open source project because of its community, permissive license, and large ecosystem.

---

References
- Python Software Foundation — https://www.python.org
- GNU Project — https://www.gnu.org
- Open Source Initiative — https://opensource.org
- The Linux Command Line — William Shotts
- GNU Bash Manual — https://www.gnu.org/software/bash/manual
