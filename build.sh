#!/usr/bin/sh

VERSION=1.0.0

TARGET=enable_map_nightvision_$VERSION

rm -f $TARGET.zip
rm -rf build

mkdir -p build/$TARGET
rsync -r * build/$TARGET --exclude build --exclude .git --exclude build.sh
cd build

zip -9 -r ../enable_map_nightvision_$VERSION.zip *
