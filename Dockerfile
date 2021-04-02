FROM debian:buster-slim

ARG PANDOC_VERSION=2.11.4
ARG PANDOC_CROSSREF_VERSION=v0.3.9.1
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y wget xz-utils \
    && mkdir download \
    && cd download \
    && wget --quiet https://github.com/jgm/pandoc/releases/download/${PANDOC_VERSION}/pandoc-${PANDOC_VERSION}-linux-amd64.tar.gz -O pandoc.tar.gz \
    && wget --quiet https://github.com/lierdakil/pandoc-crossref/releases/download/${PANDOC_CROSSREF_VERSION}/pandoc-crossref-Linux.tar.xz -O pandoc-crossref.tar.xz \
    && ls -l \
    && tar xf pandoc.tar.gz \
    && tar xf pandoc-crossref.tar.xz \
    && ls -l \
    && mv pandoc-${PANDOC_VERSION}/bin/* /usr/bin/ \
    && mv pandoc-crossref /usr/bin/ \
    && cd .. \
    && rm -rf download \
    && apt-get install -y \
        git \
        texlive-full \
        python-pygments \
        python3-pygments \
    && rm -rf /var/lib/apt/lists/*
