FROM alpine:latest
WORKDIR /root
RUN apk add --no-cache git make build-base && \
    git clone --branch master --single-branch https://github.com/Wind4/vlmcsd.git && \
    cd vlmcsd/ && \
    make
COPY --from=builder /root/vlmcsd/bin/vlmcsd /usr/bin/vlmcsd
RUN apk add --no-cache tzdata
EXPOSE 1688/tcp
CMD [ "/usr/bin/vlmcsd", "-D", "-d" ]
