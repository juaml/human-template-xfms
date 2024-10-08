# syntax=docker/dockerfile:1

FROM python:3.12-slim

LABEL org.opencontainers.image.source=https://github.com/juaml/human-template-xfms
LABEL org.opencontainers.image.description="Human brain templates transformation container image"
LABEL org.opencontainers.image.licenses=AGPL-3.0-only

RUN apt-get update && \
    apt-get install -y \
    git \
    git-annex

# Install datalad
RUN --mount=type=cache,target=/cache/pip \
    PIP_CACHE_DIR=/cache/pip \
    python -m pip install datalad

# Configure git so that datalad doesn't give warnings
RUN git config --global user.email "docker-user@juaml.github.io" && \
    git config --global user.name "Docker User"

# Clean apt cache
RUN apt-get autoremove --purge && apt-get clean

# Get all data
RUN datalad clone https://github.com/juaml/human-template-xfms.git /opt/xfms && \
    cd /opt/xfms && \
    datalad get .
