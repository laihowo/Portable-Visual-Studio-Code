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
