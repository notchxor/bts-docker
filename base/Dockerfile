FROM ubuntu:16.04

# *** Install dependencies ***
RUN apt-get update && apt-get -y upgrade && apt-get install -y \
g++ \
gcc \
build-essential \
autoconf \
cmake \
make \
git \
libbz2-dev \
libdb++-dev \
libtool \
autotools-dev \
libdb-dev \
libssl-dev \
openssl \
libreadline-dev \
libboost-all-dev \
libcurl4-openssl-dev \
libssl-dev \
libncurses-dev \
doxygen \
libcurl4-openssl-dev \
bzip2 \
libicu-dev \
python-dev \
wget


#  ***  Install custom boost version  ***
WORKDIR /tmp
ENV BOOST_ROOT /bts/boost_1_58_0

## Dowload
RUN wget -c http://sourceforge.net/projects/boost/files/boost/1.58.0/boost_1_58_0.tar.bz2/download \
-O boost_1_58_0.tar.bz2

## Extract
RUN tar xjf boost_1_58_0.tar.bz2

## Build
WORKDIR /tmp/boost_1_58_0
RUN ./bootstrap.sh "--prefix=$BOOST_ROOT" && ./b2 install


#  ***  Install bitshares  **
WORKDIR /bts

## Clone
RUN git clone https://github.com/bitshares/bitshares-core.git
WORKDIR  /bts/bitshares-core
RUN git checkout master && \
git submodule update --init --recursive

## Build
WORKDIR /bts/bitshares-core
RUN cmake -DBOOST_ROOT="$BOOST_ROOT" -DCMAKE_BUILD_TYPE=Release .
RUN make

## Install
RUN cp /bts/bitshares-core/programs/witness_node/witness_node \
  /bts/bitshares-core/programs/delayed_node/delayed_node \
  /bts/bitshares-core/programs/cli_wallet/cli_wallet \
  /usr/local/bin
