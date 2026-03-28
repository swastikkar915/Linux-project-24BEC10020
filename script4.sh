#!/bin/bash
# Script 4: Log File Analyzer
# Author: Shabi | Course: Open Source Software
# Usage: ./script4.sh /var/log/syslog "error"

# --- Input Handling ---
# Use the first argument as the log file, or default to syslog
LOGFILE=${1:-"/var/log/syslog"}
# Use the second argument as the keyword, or default to "error"
KEYWORD=${2:-"error"}
COUNT=0

# Check if the log file exists and is readable
if [ ! -r "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found or not readable."
    echo "Usage: ./script4.sh [LOGFILE] [KEYWORD]"
    exit 1
fi

echo "=========================================="
echo " Analyzing Log File: $LOGFILE"
echo " Searching for Keyword: $KEYWORD"
echo "=========================================="

# Reading the file line-by-line
while IFS= read -r LINE; do
    # -i: case insensitive, -q: quiet (only returns exit code)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "------------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE."
echo "Last 5 matches found:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
echo "=========================================="
