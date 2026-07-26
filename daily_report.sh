#!/bin/bash

echo "============================"
echo "Daily Report"
echo "Date : $(date)"
echo "Current User : $(whoami)"
echo "Current Directory : $(pwd)"
echo "System Uptime :"
uptime
echo "Disk Usage :"
df -h
echo "Memory Usage :"
free -h
echo "============================"
echo ""
