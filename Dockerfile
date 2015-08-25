FROM nowk/alpine-c:4.9.2
MAINTAINER Yung Hwa Kwon <yung.kwon@damncarousel.com>

RUN adduser -D -u 1001 -g '' c \
	&& mkdir -p /src \
	&& chown -R c:c /src

USER c
WORKDIR /src
ENTRYPOINT [ "/bin/sh" ]

# /src is the source code volume
VOLUME /src
