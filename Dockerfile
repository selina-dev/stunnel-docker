FROM alpine:3.9

COPY ./start-stunnel.sh /usr/local/bin/start-stunnel

RUN apk update \
	&& apk add stunnel \
	&& chown $(id -u):$(id -g) /usr/local/bin/start-stunnel \
        && chmod +x /usr/local/bin/start-stunnel

ENTRYPOINT ["/usr/local/bin/start-stunnel"]

