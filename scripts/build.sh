#!/bin/bash
docker --config .docker build \
    --build-arg version=${calibre_version} \
    --build-arg prefix=${prefix_version} \
    --tag ${tag} .
docker --config .docker push ${tag}

