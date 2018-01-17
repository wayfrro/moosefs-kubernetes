#!/bin/sh -ex

./update-rootfs.sh

docker build -f Dockerfile -t poeyashi/ubuntu:16.04 .
docker push poeyashi/ubuntu:16.04
