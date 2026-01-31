FROM alpine:latest

# လိုအပ်တဲ့ package များသွင်းခြင်း
RUN apk add --no-cache curl bash cloudflared

# 3x-ui ကို direct binary နဲ့ download လုပ်ခြင်း (Build ပိုမြန်ပြီး error ကင်းပါတယ်)
RUN bash -c "$(curl -L https://github.com/MHSanaei/3x-ui/raw/main/install.sh)" || true

# 3x-ui က default binary နေရာကို ရှာမတွေ့မှာစိုးလို့ link ချိတ်ပေးထားမယ်
RUN ln -s /usr/local/x-ui/x-ui /usr/bin/x-ui

COPY start.sh /start.sh
RUN chmod +x /start.sh

# Railway ရဲ့ default port (သို့မဟုတ်) 3x-ui port
EXPOSE 2053

CMD ["/start.sh"]
