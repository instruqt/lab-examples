#!/bin/sh
# gcloud compute ssh {{user}}@{{host}} \
#   --zone={{zone}} --force-key-file-overwrite \
#   --ssh-key-file={{key}} \
#   --command "test -f /tmp/hello"

# Make sure jq is there
ssh -i {{key}} -o StrictHostKeyChecking=no {{user}}@{{host}} 'test -f /tmp/hello'
