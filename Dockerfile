
FROM        alpine:3.6
MAINTAINER  Artem Labazin <xxlabaza@gmail.com>

ENV LANG en_US.utf8
ENV NIM_VERSION=0.17.0

RUN apk add --no-cache curl \
                       gcc \
                       musl-dev \
    && curl -o /tmp/nim.tar.xz -L http://nim-lang.org/download/nim-${NIM_VERSION}.tar.xz \
    && tar xpJf /tmp/nim.tar.xz -C /tmp \
    && rm /tmp/nim.tar.xz \
    && (cd /tmp/nim-${NIM_VERSION} ; ./build.sh) \
    && rm -rf /tmp/nim-${NIM_VERSION}/c_code \
              /tmp/nim-${NIM_VERSION}/compiler \
              /tmp/nim-${NIM_VERSION}/doc \
              /tmp/nim-${NIM_VERSION}/examples \
              /tmp/nim-${NIM_VERSION}/icons \
              /tmp/nim-${NIM_VERSION}/tools \
              /tmp/nim-${NIM_VERSION}/tests \
              /tmp/nim-${NIM_VERSION}/web \
              /tmp/nim-${NIM_VERSION}/*.bat \
              /tmp/nim-${NIM_VERSION}/*.sh \
              /tmp/nim-${NIM_VERSION}/*.txt \
              /tmp/nim-${NIM_VERSION}/*.nim \
              /tmp/nim-${NIM_VERSION}/*.nimble \
              /tmp/nim-${NIM_VERSION}/makefile \
    && mv /tmp/nim-${NIM_VERSION} /usr/local/lib/nim \
    && ln -s /usr/local/lib/nim/bin/nim /usr/bin/nim

VOLUME /tmp/src
VOLUME /tmp/target

ENTRYPOINT ["nim"]
CMD ["-v"]
