FROM debian:stable-slim
WORKDIR /root
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        git \
        make \
        build-base \
        tzdata \
    && git clone --branch master --single-branch https://github.com/Wind4/vlmcsd.git \
    && cd vlmcsd \
    && make
COPY --from=builder /root/vlmcsd/bin/vlmcsd /vlmcsd
EXPOSE 1688
CMD [ "vlmcsd", "-D", "-d" ]
