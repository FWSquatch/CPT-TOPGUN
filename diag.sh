#!/bin/bash

# Need to set a filename. This will ask the OS what the hostname is.
# What else might be helpful besides hostname?
FILENAME=$(hostname)

# This is a function. You can call it by typing "h_line"
h_line () { echo '--------------------------------------------' >> $FILENAME ; }

# Create a heading for the file (notice the single ">")
echo 'Machine Diagnostics for:' $(hostname) > $FILENAME
date >> $FILENAME

# Repeat these three lines for every file we want to capture.
h_line
echo '/etc/login.defs' >> $FILENAME
cat /etc/login.defs >> $FILENAME

h_line
echo '/etc/lightdm/lightdm.conf' >> $FILENAME
cat /etc/lightdm/lightdm.conf >> $FILENAME


