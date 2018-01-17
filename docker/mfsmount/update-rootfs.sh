#!/bin/bash -xe

IMAGE_FILE="ubuntu-xenial-core-cloudimg-amd64-root.tar.gz"

URL_MD5SUMS="https://partner-images.canonical.com/core/xenial/current/MD5SUMS"
URL_IMAGE="https://partner-images.canonical.com/core/xenial/current/${IMAGE_FILE}"

curl -LOJf -# $URL_MD5SUMS

if [ -f $IMAGE_FILE ]; then
  md5sum -c MD5SUMS --ignore-missing || \
    ( curl -LOJf -# $URL_IMAGE && md5sum -c MD5SUMS --ignore-missing )
else
  curl -LOJf -# $URL_IMAGE && md5sum -c MD5SUMS --ignore-missing
fi

