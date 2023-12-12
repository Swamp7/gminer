FROM nvidia/cuda:12.1.0-runtime-ubuntu18.04

RUN rm /etc/apt/sources.list.d/cuda.list

RUN apt update \
    && apt -y install wget \
    && wget https://github.com/develsoftware/GMinerRelease/releases/download/3.43/gminer_3_43_linux64.tar.xz \
    && tar xvzf gminer_3_43_linux64.tar.gz \
    && rm gminer_3_43_linux64.tar.gz

WORKDIR /miner

ENTRYPOINT ["./miner"]
