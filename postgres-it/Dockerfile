FROM postgres:11.5-alpine
COPY docker-entrypoint-initdb.d/ /docker-entrypoint-initdb.d/
RUN apk add nodejs=10.16.3-r0
RUN apk add npm=10.16.3-r0
# RUN apk add --no-cache su-exec
RUN set -ex && apk --no-cache add sudo
USER root
EXPOSE 5432:5432