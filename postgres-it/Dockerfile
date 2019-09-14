FROM postgres:11.5-alpine
COPY docker-entrypoint-initdb.d/ /docker-entrypoint-initdb.d/
RUN apk add nodejs=10.16.3-r0
RUN apk add npm=10.16.3-r0
RUN apk add --no-cache su-exec
EXPOSE 5432:5432