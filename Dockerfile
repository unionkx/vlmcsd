FROM debian:stable-slim
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        git \
        make \
    && git config --global http.sslVerify false
    && git clone -b master --single-branch https://github.com/Wind4/vlmcsd.git \
    && cd vlmcsd \
    && make
COPY vlmcsd/bin/vlmcsd vlmcsd
EXPOSE 1688
CMD [ "vlmcsd"]
