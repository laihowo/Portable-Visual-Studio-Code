#!/bin/bash

# cd Portable-Visual-Studio-Code

# Mac Google Chrome
open -a "Google Chrome" https://portal.azure.com/#@ec09e4d7-3d0f-4eff-9c1e-7ba8060c5417/resource/subscriptions/d230fa20-6a54-46d8-9a05-b8839e5ce157/resourcegroups/laihowo/providers/Microsoft.Compute/virtualMachines/laihowo/overview

# Mac Visual Studio Code
export PATH="$PATH:Visual Studio Code.app/Contents/Resources/app/bin"
code --install-extension ms-vscode-remote.remote-ssh

# Azure Virtual Machine
DIR=$HOME/.ssh/
if ! test -d "$DIR"; then
    mkdir $DIR
    KEY=laihowo.pem
    FILE=$DIR/$KEY
    cp $KEY $DIR
    chmod 400 $FILE
fi

cp config $DIR

# gcloud
# TAR=google-cloud-sdk-346.0.0-linux-x86_64.tar.gz
# curl -O "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/$TAR"
# tar -xzvf $TAR
export PATH="$PATH:google-cloud-sdk/bin"
gcloud auth login
