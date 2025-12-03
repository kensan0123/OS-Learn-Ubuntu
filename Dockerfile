FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        ca-certificates \
        clang \
        curl \
        git \
        lld \
        llvm \
        qemu-system-riscv32 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /work
