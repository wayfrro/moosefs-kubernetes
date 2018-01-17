#!/bin/sh -ex

./update-rootfs.sh

VERSION='3.0.99-1'

docker build -f Dockerfile --build-arg MFSVERSION=$VERSION -t mfsmount:$VERSION .
docker tag mfsmount:$VERSION poeyashi/mfsmount:$VERSION
docker push poeyashi/mfsmount:$VERSION
