#!/bin/bash

# Script 2 - check package
# checking if python is installed

pkg="python3"

echo "FOSS Package Inspector"
echo "----------------------"

# check install
if which $pkg >/dev/null 2>&1
then
    echo "Package : $pkg"
    echo "Status  : installed"
    ver=$(python3 --version 2>&1)
    loc=$(which python3)
    echo "Version : $ver"
    echo "Location: $loc"
    echo "License : PSF License"
else
    echo "$pkg not installed"
fi

echo ""

# small note about software
case $pkg in
    python3) echo "Python is open source and anyone can use or modify it." ;;
    httpd) echo "Apache is used to run many websites." ;;
    mysql) echo "MySQL is a database used in many applications." ;;
    git) echo "Git is used for version control in software projects." ;;
    *) echo "This is an open source software package." ;;
esac

echo ""
echo "Open source means you can use, study, change and share the software."
