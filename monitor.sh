#!/bin/bash

# Replace with your actual GitHub Pages URL after deployment
URL="https://your-github-username.github.io/scam-alert-system-devops/"
LOG_FILE="uptime.log"

# Get current time
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

# Check website status
STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}\n" "$URL")

# Write result to log file
if [ "$STATUS_CODE" -eq 200 ]; then
  echo "$TIMESTAMP - Website UP (Status: $STATUS_CODE)" >> "$LOG_FILE"
else
  echo "$TIMESTAMP - Website DOWN (Status: $STATUS_CODE)" >> "$LOG_FILE"
fi
