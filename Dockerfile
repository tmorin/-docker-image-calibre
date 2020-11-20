FROM ubuntu:focal
ARG version="4.99.4"
ARG prefix="+dfsg+really4.12.0-1build1"
ARG git_sha=""
LABEL org.label-schema.schema-version="1.0" \
      org.label-schema.vendor="tmorin" \
      org.label-schema.license="MIT" \
      org.label-schema.vcs-ref="$git_sha" \
      org.label-schema.vcs-url="https://github.com/tmorin/docker-image-calibre"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y \
  && apt-get install -y calibre=${version}${prefix} \
  && apt-get clean \
  && rm -rf /var/cache/apt/* /var/lib/apt/lists/* \
  && mkdir /workdir
WORKDIR /workdir
VOLUME /workdir
CMD ["/bin/bash"]
