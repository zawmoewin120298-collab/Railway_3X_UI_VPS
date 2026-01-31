#!/bin/bash

# 3x-ui service ကို စတင်မယ်
/usr/local/x-ui/x-ui &

echo "Waiting for 3x-ui to start..."
sleep 5

# Cloudflare Tunnel ကို run မယ်
if [ -z "$TUNNEL_TOKEN" ]; then
  echo "Error: TUNNEL_TOKEN variable is missing in Railway!"
  exit 1
fi

echo "Starting Cloudflare Tunnel..."
cloudflared tunnel --no-autoupdate run --token eyJhIjoiOGQxZmJmOGJjOWM1NmFkOGYyMjZhMGM1MmNlZjgxNzIiLCJ0IjoiYWY4YzMwNWQtOWEwMC00YWEwLWFjNjMtNDVlY2Q2YjkwYjAyIiwicyI6IlpERmlNak0zTXpndE9UWTFOaTAwWm1ZNExXSmlOekl0TmpkalltUmpOV0ZoT1dObCJ9
