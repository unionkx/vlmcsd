FROM alpine:latest
WORKDIR /root
RUN apk add --no-cache git make build-base tzdata && \
    git clone --branch master --single-branch https://github.com/Wind4/vlmcsd.git && \
    cd vlmcsd && \
    make
COPY --from=builder /root/vlmcsd/bin/vlmcsd /vlmcsd
EXPOSE 1688/tcp
CMD [ "/vlmcsd", "-D", "-d" ]
