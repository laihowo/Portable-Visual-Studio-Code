#!/bin/bash

# cd Portable-Visual-Studio-Code

# Mac Visual Studio Code
# ZIP=VSCode-darwin-universal.zip
# curl -O "https://az764295.vo.msecnd.net/stable/507ce72a4466fbb27b715c3722558bb15afa9f48/$ZIP"
# wget "https://code.visualstudio.com/sha/download?build=stable&os=darwin-universal"
# unzip $ZIP
open Visual\ Studio\ Code.app/

# gcloud
# TAR=google-cloud-sdk-346.0.0-linux-x86_64.tar.gz
# curl -O "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/$TAR"
# tar -xzvf $TAR
./google-cloud-sdk/bin/gcloud init

IP=$(./google-cloud-sdk/bin/gcloud cloud-shell ssh --dry-run --authorize-session | grep -o "[0-9]\+[.][0-9]\+[.][0-9]\+[.][0-9]\+")
if [ -z "$IP" ]
then
    IP=1.2.3.4
fi
echo $IP
#sed -i "s/[0-9]\+[.][0-9]\+[.][0-9]\+[.][0-9]\+/$IP/" .ssh/config

cp config /Users/library/.ssh/config
