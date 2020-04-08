FROM alpine:latest

RUN apk add --update --no-cache tor netcat-openbsd openssh-client && \
	echo "ProxyCommand nc -x 127.0.0.1:9050 %h %p" >> /etc/ssh/ssh_config && \
	rm -rf /var/cache/apk/*

COPY ./entrypoint.sh /
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
