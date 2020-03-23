FROM ubuntu:eoan
ARG version="3.46.0"
ARG prefix="+dfsg-1"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y \
  && apt-get install -y calibre=${version}${prefix} \
  && apt-get clean \
  && rm -rf /var/cache/apt/* /var/lib/apt/lists/* \
  && mkdir /workdir
WORKDIR /workdir
VOLUME /workdir
CMD ["/bin/bash"]
