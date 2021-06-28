#!/bin/bash

# cd Portable-Visual-Studio-Code

# Mac Google Chrome
open -a "Google Chrome"

# Mac Visual Studio Code
./Visual_Studio_Code.app/Contents/Resources/app/bin/code --install-extension ms-vscode-remote.remote-ssh

# gcloud
# TAR=google-cloud-sdk-346.0.0-linux-x86_64.tar.gz
# curl -O "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/$TAR"
# tar -xzvf $TAR
./google-cloud-sdk/bin/gcloud init
