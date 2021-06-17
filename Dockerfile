FROM alpine:latest
WORKDIR /root
RUN \
echo "**** install runtime packages ****" && \
apk add --no-cache --upgrade \
        git \
        make \
        build-base \
        tzdata && \
echo "**** git vlmcsd ****" && \
git clone --branch master --single-branch https://github.com/Wind4/vlmcsd.git && \
cd vlmcsd && \
make
COPY --from=builder /root/vlmcsd/bin/vlmcsd /vlmcsd
EXPOSE 1688/tcp
CMD [ "/vlmcsd", "-D", "-d" ]
