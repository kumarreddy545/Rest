FROM alpine
RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
    libffi-dev \
	libressl-dev \
  && pip install virtualenv \
  && pip install cffi \
  && rm -rf /var/cache/apk/*
ARG proxy
ENV https_proxy=$proxy \
	LANG=en_US.UTF-8 \
	LC_ALL=en_US.UTF-8
COPY src /apps
WORKDIR /apps
RUN python -V
RUN pip install cryptography && pip install pipenv && pipenv install
CMD ["sh","/apps/bootstrap.sh"]
