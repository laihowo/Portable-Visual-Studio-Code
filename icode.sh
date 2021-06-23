#!/bin/bash
IP=$(./gcloud-sdk/gcloud cloud-shell ssh --dry-run --authorize-session | grep -o "[0-9]\+[.][0-9]\+[.][0-9]\+[.][0-9]\+")
if [ -z "$IP" ]
then
    IP=1.2.3.4
fi
echo $IP
#sed -i "s/[0-9]\+[.][0-9]\+[.][0-9]\+[.][0-9]\+/$IP/" .ssh/config
