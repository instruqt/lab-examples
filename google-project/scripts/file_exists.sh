#!/bin/sh
gcloud compute ssh {{user}}@{{host}} \
  --zone={{zone}} --force-key-file-overwrite \
  --ssh-key-file={{key}} \
  --command "test -f /tmp/hello"