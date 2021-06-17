FROM ubuntu:latest
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        git \
        make \
        build-base \
        tzdata \
    && git clone -b master --single-branch https://github.com/Wind4/vlmcsd.git \
    && cd vlmcsd \
    && make
COPY --from=builder vlmcsd/bin/vlmcsd /vlmcsd
EXPOSE 1688
CMD [ "vlmcsd", "-D", "-d" ]
