#!/bin/bash

echo "Starting 3x-ui Panel..."
/usr/local/x-ui/x-ui &

echo "Starting Cloudflare Tunnel..."
# TUNNEL_TOKEN ကို Railway Variables ထဲမှာ ထည့်ထားဖို့ လိုပါတယ်
if [ -z "$TUNNEL_TOKEN" ]; then
  echo "ERROR: TUNNEL_TOKEN is not set in Railway Variables!"
  exit 1
fi

cloudflared tunnel --no-autoupdate run --token eyJhIjoiOGQxZmJmOGJjOWM1NmFkOGYyMjZhMGM1MmNlZjgxNzIiLCJ0IjoiYWY4YzMwNWQtOWEwMC00YWEwLWFjNjMtNDVlY2Q2YjkwYjAyIiwicyI6IlpERmlNak0zTXpndE9UWTFOaTAwWm1ZNExXSmlOekl0TmpkalltUmpOV0ZoT1dObCJ9
