#
#
#

FROM phusion/baseimage:latest-amd64 as host
LABEL maintainer "marco@one.io"

## base system
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y curl cmake pkg-config libssl-dev git gcc build-essential clang libclang-dev && \
    curl https://sh.rustup.rs -sSf | sh -s -- -y && \
    rustup update nightly && \
    rustup update stable && \
    rustup target add wasm32-unknown-unknown --toolchain nightly && \
    export PATH=$PATH:$HOME/.cargo/bin

