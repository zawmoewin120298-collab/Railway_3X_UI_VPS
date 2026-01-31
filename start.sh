#!/bin/bash

# 3x-ui ကို background မှာ run မယ်
/usr/local/x-ui/x-ui &

# Cloudflare Tunnel ကို run မယ်
# TUNNEL_TOKEN ကို Railway Environment Variable ကနေ ဖတ်သွားမှာပါ
cloudflared tunnel --no-autoupdate run --token eyJhIjoiOGQxZmJmOGJjOWM1NmFkOGYyMjZhMGM1MmNlZjgxNzIiLCJ0IjoiYWY4YzMwNWQtOWEwMC00YWEwLWFjNjMtNDVlY2Q2YjkwYjAyIiwicyI6IlpERmlNak0zTXpndE9UWTFOaTAwWm1ZNExXSmlOekl0TmpkalltUmpOV0ZoT1dObCJ9
