FROM quay.io/lyfe00011/bot:beta

RUN git clone https://github.com/taurus-efx/userbot-v2 /root/WhatsAsena
RUN mv /root/bottus/* /root/whatsAsena
WORKDIR /root/WhatsAsena/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN apk --no-cache --virtual build-dependencies add \
    python \
    make \
    g++ \
    && npm install \
    && apk del build-dependencies
RUN npm install

CMD ["node", "bot.js"]
