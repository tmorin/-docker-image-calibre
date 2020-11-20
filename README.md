# docker-image-calibre

![Build Images](https://github.com/tmorin/docker-image-calibre/workflows/Build%20Images/badge.svg)
[![Docker Image Version (latest semver)](https://img.shields.io/docker/v/thibaultmorin/calibre?label=thibaultmorin%2Fcalibre)](https://hub.docker.com/r/thibaultmorin/calibre)

Provide a Docker image running [kovidgoyal/calibre](https://github.com/kovidgoyal/calibre).

## Usage

```bash
docker run --rm thibaultmorin/calibre calibre-server --version
```

```bash
docker run --rm -v$(pwd):/workdir --user=$(id --user):$(id --group) thibaultmorin/calibre ebook-meta --version
```
