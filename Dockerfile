FROM quay.io/evryfs/base-ubuntu:jammy-20221101
LABEL maintainer "fsdevops@evry.com"
RUN apt-get update && \
	apt-get --no-install-recommends -y install somepackage && \
	apt-get -y clean && \
	rm -rf /var/cache/apt /var/lib/apt/lists/* /tmp/* /var/tmp/*
