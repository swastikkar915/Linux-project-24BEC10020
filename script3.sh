#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Shabi | Course: Open Source Software

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=========================================="
echo "      Directory Audit Report              "
echo "=========================================="

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Getting the directory's permissions and size
        # ls -ld: displays info for the directory itself
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "$DIR => Permissions: $PERMS | Owner: $OWNER | Size: $SIZE"
    else
        echo "Directory $DIR does not exist on this system."
    fi
done

echo "------------------------------------------"
echo "Searching for the Python software location..."
# which -a displays all paths for the command
PYTHON_LOC=$(which python3)
if [ -n "$PYTHON_LOC" ]; then
    echo "Python is located at: $PYTHON_LOC"
    ls -l "$PYTHON_LOC"
else
    echo "Python binary not found."
fi
echo "=========================================="
