#!/bin/bash

echo "Starting 3x-ui..."
/usr/local/x-ui/x-ui > /dev/null 2>&1 &

sleep 5

echo "Connecting to Cloudflare Tunnel..."
# Token ကို ဒီထဲမှာ တိုက်ရိုက် ထည့်ပေးလိုက်တာပါ
/usr/local/bin/cloudflared tunnel --no-autoupdate run --token eyJhIjoiOGQxZmJmOGJjOWM1NmFkOGYyMjZhMGM1MmNlZjgxNzIiLCJ0IjoiYWY4YzMwNWQtOWEwMC00YWEwLWFjNjMtNDVlY2Q2YjkwYjAyIiwicyI6IlpERmlNak0zTXpndE9UWTFOaTAwWm1ZNExXSmlOekl0TmpkalltUmpOV0ZoT1dObCJ9
