FROM debian:testing

RUN echo "running"; \
    dpkg --add-architecture arm64; \
    apt update; \
    apt install build-essential autoconf gcc-aarch64-linux-gnu; \
    apt install crossbuild-essential-arm64 zlib1g-dev:arm64 upx wget cpio flex bison bc