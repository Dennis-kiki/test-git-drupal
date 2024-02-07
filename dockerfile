
FROM python:2

COPY build.sh /build.sh

CMD  ["/build.sh"]

ENTRYPOINT cp /premiere-deluge-plugin/dist/*.egg ~/.config/deluge/plugins/ && deluged && deluge-web --fork && bash
