

# Building
Clone the source code using `git clone --recursive`, or run `git submodule update --init --depth 1 src/busybox` in this repo.

## Dependicies
upx aarch64-linux-gnu-gcc zlib

### For Arch Linux
Arch linux doesn't work easily because it doesn't have a zlib.h header file packaged for the cross compile environment
```
# pacman -S base-devel
# pacman -S upx aarch64-linux-gnu-gcc
```

### For Debian
```
apt update

apt install build-essential
apt install autoconf
apt install gcc-aarch64-linux-gnu

# or
apt install build-essential autoconf gcc-aarch64-linux-gnu

dpkg --add-architecture arm64
apt update
```

```
apt install crossbuild-essential-arm64 zlib1g-dev:arm64 upx wget cpio flex bison bc
```
or
```
apt install crossbuild-essential-arm64
apt install zlib1g-dev:arm64
apt install upx
apt install wget
apt install cpio
apt install flex
apt install bison
apt install bc
```
then
```
make
```

### Not Sure
 - one of aarch64-linux-gnu-linux-api-headers, linux-api-headers

## For PinePhone

Run `make pine64-pinephone.img`

# License

Pineloader is a multi-bootloader written in bash and uses kexec system call.

Licensed under GPLv2, we do not take responsible for any damaged devices, use with care.
