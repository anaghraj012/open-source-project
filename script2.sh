#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="vlc"

if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed."
    dpkg -l | grep $PACKAGE
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    vlc) echo "VLC: a free multimedia player that plays almost all formats" ;;
    firefox) echo "Firefox: open-source browser for privacy and freedom" ;;
    git) echo "Git: version control system built for developers" ;;
    apache2) echo "Apache: web server powering the internet" ;;
    *) echo "Unknown package" ;;
esac
