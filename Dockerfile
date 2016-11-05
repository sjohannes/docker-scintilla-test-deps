# Copying and distribution of this file, with or without modification,
# are permitted in any medium without royalty.
# This file is offered as-is, without any warranty.

FROM buildpack-deps:jessie

RUN set -x \
	&& apt update \
	&& apt install -y --no-install-recommends \
		libpyside-dev \
		libshiboken-dev \
		python-pyside.qtgui \
		qt4-default \
		shiboken \
		xvfb \
	&& rm -rf /var/lib/apt/lists/*
