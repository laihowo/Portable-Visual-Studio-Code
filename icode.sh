#!/bin/bash

IP=$(./google-cloud-sdk/bin/gcloud cloud-shell ssh --dry-run --authorize-session | grep -o "[0-9]\+[.][0-9]\+[.][0-9]\+[.][0-9]\+")
if [ -z "$IP" ]
then
    IP=1.2.3.4
fi
#echo $IP

sed -Ei "" "s/[0-9]+[.][0-9]+[.][0-9]+[.][0-9]+/$IP/" config
cp config /Users/library/.ssh/config

# Mac Visual Studio Code
# ZIP=VSCode-darwin-universal.zip
# curl -O "https://az764295.vo.msecnd.net/stable/507ce72a4466fbb27b715c3722558bb15afa9f48/$ZIP"
# wget "https://code.visualstudio.com/sha/download?build=stable&os=darwin-universal"
# unzip $ZIP
open Visual\ Studio\ Code.app/
