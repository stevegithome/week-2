ARG NODE_VERSION=24-bookworm
FROM node:${NODE_VERSION}

RUN apt-get update \
	&& apt-get install -y --no-install-recommends git git-lfs less openssh-client procps sudo \
	&& git lfs install --system \
	&& rm -rf /var/lib/apt/lists/*
