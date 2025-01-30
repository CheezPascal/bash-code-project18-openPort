#!/bin/bash

# Check for open ports using lsof
echo "Checking open ports..."

echo "-------------------------------"
echo "PID   USER   COMMAND   PORT"
echo "-------------------------------"

# Run lsof to find listening ports and format output
sudo lsof -i -P -n | grep LISTEN | awk '{print $2, $3, $1, $9}' | column -t

