FROM nvidia/cuda:12.1.0-runtime-ubuntu18.04

RUN rm /etc/apt/sources.list.d/cuda.list

RUN apt update \
    && apt -y install wget \
    && apt -y install xz-utils \
    && wget https://github.com/develsoftware/GMinerRelease/releases/download/3.43/gminer_3_43_linux64.tar.xz \
    && mkdir miner \
    && tar xvf gminer_3_43_linux64.tar.xz -C miner \
    && rm gminer_3_43_linux64.tar.xz

WORKDIR /miner

ENTRYPOINT ["./miner"]
