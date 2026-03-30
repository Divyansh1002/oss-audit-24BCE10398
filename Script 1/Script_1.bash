#!/bin/bash

# Script 1 - system info

name="Divyansh Goyal"
software="Python"

# get info
kernel=$(uname -r)
user=$(whoami)
date_now=$(date '+%d %B %Y')
time_now=$(date '+%H:%M:%S')
pyver=$(python3 --version 2>&1)
distro=$(grep PRETTY_NAME /etc/os-release | cut -d'"' -f2)

echo "============================================"
echo "       Open Source Audit — $name    "
echo "============================================"

echo ""
echo "Software Chosen : $software"
echo "Kernel Version  : $kernel"
echo "Current User    : $user"
echo "Date            : $date_now"
echo "Time            : $time_now"
echo "Python Version  : $pyver"
echo "Distribution    : ${distro:-Linux (unknown distro)}"

echo ""
echo "--------------------------------------------"
echo " OS License: GNU General Public License v2  "
echo " Python License: PSF License Version 2      "
echo "--------------------------------------------"

echo ""
echo "System is ready for Open Source Audit."