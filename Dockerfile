FROM ubuntu:eoan
ARG version="3.46.0"
ARG prefix="+dfsg-1"
ARG vcs_ref
ARG build_data
LABEL org.label-schema.schema-version="1.0" \
      org.label-schema.vendor=tmorin \
      org.label-schema.license=MIT \
      org.label-schema.build-date="$build_data" \
      org.label-schema.vcs-ref="$vcs_ref" \
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
