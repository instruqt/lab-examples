#!/bin/bash
set -euxo pipefail
export DEBIAN_FRONTEND=noninteractive

apt-get update -qq
apt-get install -y -qq openssh-client curl python3 >/dev/null

mkdir -p /root/.ssh
chmod 700 /root/.ssh
ssh-keygen -t ed25519 -N "" -f /root/.ssh/id_ed25519 -q

cat > /root/.ssh/config <<'SSHCONF'
Host *
  StrictHostKeyChecking no
  UserKnownHostsFile /dev/null
  LogLevel ERROR
SSHCONF
chmod 600 /root/.ssh/config

mkdir -p /srv/topology
python3 -c "
import json
pubkey = open('/root/.ssh/id_ed25519.pub').read().strip()
json.dump({'ssh_pubkey': pubkey}, open('/srv/topology/topology.json', 'w'))
"

nohup python3 -m http.server 8081 --directory /srv/topology > /var/log/topology-broker.log 2>&1 &
disown

echo "workstation bootstrap complete"
