FROM alpine:latest as builder
RUN apk add --no-cache git make build-base && \
    git clone -branch master --single-branch https://github.com/Wind4/vlmcsd.git && \
    cd vlmcsd && \
    make

FROM alpine:latest
COPY --from=builder vlmcsd/bin/vlmcsd /vlmcsd
RUN apk add --no-cache tzdata
EXPOSE 1688/tcp
CMD [ "/vlmcsd", "-D", "-d" ]
