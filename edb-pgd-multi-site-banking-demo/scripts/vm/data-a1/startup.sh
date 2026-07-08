#!/bin/bash
set -euxo pipefail
export DEBIAN_FRONTEND=noninteractive

# Fresh Ubuntu cloud images run apt-daily/apt-daily-upgrade timers at boot
# that grab the dpkg lock; stop them so our apt-get doesn't block on it.
systemctl stop apt-daily.timer apt-daily-upgrade.timer >/dev/null 2>&1 || true
systemctl kill --kill-who=all apt-daily.service >/dev/null 2>&1 || true
systemctl kill --kill-who=all apt-daily-upgrade.service >/dev/null 2>&1 || true
while fuser /var/lib/dpkg/lock-frontend >/dev/null 2>&1; do sleep 1; done

apt-get update -qq
apt-get install -y -qq openssh-server python3 >/dev/null
systemctl enable --now ssh

sed -i 's/^#\?PermitRootLogin.*/PermitRootLogin prohibit-password/' /etc/ssh/sshd_config
systemctl restart ssh

mkdir -p /root/.ssh
chmod 700 /root/.ssh
touch /root/.ssh/authorized_keys
chmod 600 /root/.ssh/authorized_keys

# track await-workstation-key.sh daemon
for i in $(seq 1 60); do
  pubkey=$(curl -fsS --max-time 3 http://workstation:8081/topology.json 2>/dev/null \
    | python3 -c "import sys,json; print(json.load(sys.stdin).get('ssh_pubkey',''))" 2>/dev/null || true)
  if [ -n "$pubkey" ]; then
    grep -qF "$pubkey" /root/.ssh/authorized_keys || echo "$pubkey" >> /root/.ssh/authorized_keys
    break
  fi
  sleep 2
done
