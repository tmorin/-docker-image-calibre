# docker-image-calibre

[![Build Status](https://travis-ci.org/tmorin/docker-image-calibre.svg)](https://travis-ci.org/tmorin/docker-image-calibre)
[![](https://images.microbadger.com/badges/version/thibaultmorin/calibre:latest.svg)](https://microbadger.com/images/thibaultmorin/calibre:latest "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/thibaultmorin/calibre:latest.svg)](https://microbadger.com/images/thibaultmorin/calibre:latest "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/commit/thibaultmorin/calibre:latest.svg)](https://microbadger.com/images/thibaultmorin/calibre:latest "Get your own commit badge on microbadger.com")
[![](https://images.microbadger.com/badges/license/thibaultmorin/calibre.svg)](https://microbadger.com/images/thibaultmorin/calibre "Get your own license badge on microbadger.com")

Provide a Docker image running [kovidgoyal/calibre](https://github.com/kovidgoyal/calibre).

## Usage

```bash
docker run --rm thibaultmorin/calibre calibre-server --version
```

```bash
docker run --rm -v$(pwd):/workdir --user=$(id --user):$(id --group) thibaultmorin/calibre ebook-meta --version
```
