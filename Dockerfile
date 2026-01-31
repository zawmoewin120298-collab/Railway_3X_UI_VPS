FROM ubuntu:latest

# လိုအပ်တဲ့ package များသွင်းခြင်း
RUN apt-get update && apt-get install -y curl bash wget unzip

# 3x-ui install လုပ်ခြင်း
RUN curl -L https://github.com/MHSanaei/3x-ui/raw/main/install.sh | bash -s -- -y

# Cloudflare Tunnel (cloudflared) ကို Binary အနေနဲ့ တိုက်ရိုက်ယူခြင်း
RUN wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64 -O /usr/local/bin/cloudflared && \
    chmod +x /usr/local/bin/cloudflared

COPY start.sh /start.sh
RUN chmod +x /start.sh

# Railway Default Port
EXPOSE 2053

CMD ["/start.sh"]
