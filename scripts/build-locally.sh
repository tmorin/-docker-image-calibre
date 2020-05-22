#!/bin/bash

calibre_version="4.99.4"
prefix_version="+dfsg+really4.12.0-1build1"
vcs_ref="unknown"
tag_image="thibaultmorin/calibre"
tag_version="$calibre_version-amd64"

function build {
    dockerfile=$1
    tag=$2
    target=$3
    echo "------ build ${tag} ------"
    docker build \
        --file "${dockerfile}" \
        --build-arg vcs_ref="${vcs_ref}" \
        --build-arg build_date="$(date --rfc-3339 ns)" \
        --build-arg version="${calibre_version}" \
        --build-arg prefix="${prefix_version}" \
        --build-arg tag_version="${tag_version}" \
        --target "${target}" \
        --tag "${tag}" \
        .
}

build "Dockerfile" "${tag_image}:${tag_version}" \
&& docker tag "${tag_image}:${tag_version}" "${tag_image}:latest"
