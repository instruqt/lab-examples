#!/bin/sh
# gcloud compute ssh {{user}}@{{host}} \
#   --zone={{zone}} --force-key-file-overwrite \
#   --ssh-key-file={{key}} \
#   --command "test -f /tmp/hello"

# Make sure jq is there
apk add -u jq

IP=$(gcloud compute instances describe my-instance --zone europe-west1-b --format=json | jq -r .networkInterfaces[0].accessConfigs[0].natIP)

ssh -i {{key}} {{user}}@${IP} 'test -f /tmp/hello'
