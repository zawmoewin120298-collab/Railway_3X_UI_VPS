FROM alpine:latest

# လိုအပ်တဲ့ tool များသွင်းခြင်း
RUN apk add --no-cache curl bash supervisor

# 3x-ui install လုပ်ခြင်း
RUN bash -c "$(curl -L https://github.com/MHSanaei/3x-ui/raw/main/install.sh)"

# Cloudflare Tunnel (cloudflared) သွင်းခြင်း
RUN wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64 -O /usr/local/bin/cloudflared && \
    chmod +x /usr/local/bin/cloudflared

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
