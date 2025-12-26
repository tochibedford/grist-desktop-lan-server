#!/bin/bash

IP_ADDRESS=$(
  ipconfig getifaddr en0 2>/dev/null || \
  ipconfig getifaddr en1 2>/dev/null
)

if [ -z "$IP_ADDRESS" ]; then
  osascript -e 'display dialog "Could not detect local IP address.\nMake sure Wi-Fi or Ethernet is connected." buttons {"OK"}'
  exit 1
fi

echo "Starting Grist on IP: $IP_ADDRESS"

GRIST_HOST=$IP_ADDRESS \
GRIST_DESKTOP_AUTH=none \
"/Applications/Grist Desktop.app/Contents/MacOS/Grist Desktop"
