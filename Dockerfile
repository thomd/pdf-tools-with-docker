FROM alpine:latest

RUN apk update
RUN apk add pdftk ghostscript imagemagick ghostscript-fonts bash
RUN rm -rf /var/cache/apk/*

RUN mkdir /scripts
ADD scripts/* /scripts/
ENV PATH /scripts:$PATH
ENV PAGER less

WORKDIR /data

CMD [ "/scripts/help" ]
