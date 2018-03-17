FROM gliderlabs/alpine:3.3
MAINTAINER      PP

RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
  && pip install virtualenv \
  && rm -rf /var/cache/apk/*


ENV UDPPORT 5005
ADD udplistener.py /echoudp.py
CMD ["python", "-u","/echoudp.py"]

EXPOSE 3480
EXPOSE 3480/udp
