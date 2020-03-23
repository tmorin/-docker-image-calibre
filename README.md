[![Build Status](https://travis-ci.org/tmorin/docker-image-calibre.svg)](https://travis-ci.org/tmorin/docker-image-calibre)

# docker-image-calibre

Provide a Docker image running [kovidgoyal/calibre](https://github.com/kovidgoyal/calibre).

## Usage

```bash
docker run --rm thibaultmorin/calibre calibre-server --version
```

```bash
docker run --rm -v$(pwd):/workdir --user=$(id --user):$(id --group) thibaultmorin/calibre ebook-meta --version
```
