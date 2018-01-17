FROM ubuntu:16.04

WORKDIR /work

RUN apt-get update

RUN apt-get update && \
    apt-get install -y git \
                       lua5.1 \
                       gcc-4.9 \
                       build-essential \
                       pkg-config \
                       sqlite3 \
                       libboost-iostreams-dev \
                       libboost-filesystem-dev \
                       libsqlite3-dev \
                       liblua5.1-0-dev \
                       libcurl4-gnutls-dev \
                       zlib1g-dev \
                       libgcrypt20-dev \
                       libwxgtk3.0-dev \
                       libswscale-dev

ADD tweaks.diff .

ADD build-lsnes.sh .

RUN bash build-lsnes.sh
