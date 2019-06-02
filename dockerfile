ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8
RUN apk add --no-cache nodejs-npm git 
RUN git clone https://github.com/tsightler/ring-alarm-mqtt.git
COPY run.sh /
COPY ring-alarm-mqtt.js.diff ring-alarm-mqtt/ring-alarm-mqtt.js.diff

RUN chmod +x run.sh

CMD [ "/run.sh" ]
