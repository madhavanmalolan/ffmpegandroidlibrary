#!/bin/bash
NDK=$HOME/Downloads/android-ndk-r12b
SYSROOT=$NDK/platforms/android-14/arch-arm/
TOOLCHAIN=$NDK/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64
echo $TOOLCHAIN
echo $SYSROOT
function build_one
{
./configure \
    --prefix=$PREFIX \
    --enable-shared \
    --disable-static \
    --disable-doc \
    --disable-ffmpeg \
    --disable-ffplay \
    --disable-ffprobe \
    --disable-ffserver \
    --disable-doc \
    --disable-symver \
    --enable-protocol=concat \
    --enable-protocol=file \
    --enable-muxer=mp4 \
    --enable-demuxer=mpegts \
    --enable-memalign-hack \
    --cross-prefix=$TOOLCHAIN/bin/arm-linux-androideabi- \
    --target-os=linux \
    --arch=arm \
    --enable-cross-compile \
    --sysroot=$SYSROOT \
    --extra-cflags="-Os -fpic $ADDI_CFLAGS" \
    --extra-ldflags="$ADDI_LDFLAGS" \
    $ADDITIONAL_CONFIGURE_FLAG

make clean
make -j3
make install
}

CPU=arm
PREFIX=$(pwd)/android/$CPU 
ADDI_CFLAGS="-marm"
build_one
