#!/bin/bash

# Mac
# wget "https://code.visualstudio.com/sha/download?build=stable&os=darwin-universal"
# open

# Windows
# wget "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-archive"
# unzip

# gcloud
# curl -O "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-346.0.0-linux-x86_64.tar.gz"
# tarf -vf
# ./google-cloud-sdk/bin/gcloud init

IP=$(./google-cloud-sdk/bin/gcloud cloud-shell ssh --dry-run --authorize-session | grep -o "[0-9]\+[.][0-9]\+[.][0-9]\+[.][0-9]\+")
if [ -z "$IP" ]
then
    IP=1.2.3.4
fi
echo $IP
#sed -i "s/[0-9]\+[.][0-9]\+[.][0-9]\+[.][0-9]\+/$IP/" .ssh/config
