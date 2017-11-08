# DESCRIPTION:	SSH client via tor network
# AUTHORS:		Gregoire MOLVEAU <gregoire.molveau@gmail.com>
# USAGE:
#	# Run your SSH command
#	docker run --rm -it -v $HOME/.ssh/id_rsa:/id_rsa:ro gmolveau/ssh-tor ssh -i /id_rsa -v user@example.com
#

FROM alpine:latest

RUN apk add --update --no-cache tor netcat-openbsd openssh-client && \
	echo "ProxyCommand nc -x 127.0.0.1:9050 %h %p" >> /etc/ssh/ssh_config && \
	rm -rf /var/cache/apk/*

COPY ./entrypoint.sh /
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]