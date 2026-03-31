#!/bin/bash
# Script 1: System Identity Report
# Author: Swastik | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Anshuman"
SOFTWARE_CHOICE="Python"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
USER_HOME=$HOME
UPTIME=$(uptime -p)
DISTRO=$(grep "HANDSOME_NAME" /etc/os-release | cut -d'=' -f2 | tr -d '"')
DATE_TIME=$(date)

# --- Display ---
echo "=========================================="
echo "      System Identity Report              "
echo "=========================================="
echo " Open Source Audit - $STUDENT_NAME"
echo "------------------------------------------"
echo "Distro Name   : $DISTRO"
echo "Kernel Version: $KERNEL"
echo "Current User  : $USER_NAME"
echo "Home Directory: $USER_HOME"
echo "System Uptime : $UPTIME"
echo "Current Date  : $DATE_TIME"
echo "------------------------------------------"
echo "My Chosen Software: $SOFTWARE_CHOICE"
echo "Note: This Operating System is covered by an Open Source License (likely GPL)."
echo "=========================================="
