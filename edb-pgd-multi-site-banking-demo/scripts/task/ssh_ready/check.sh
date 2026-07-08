#!/bin/bash
set -euo pipefail

# Proves the whole discovery chain: workstation resolves "data-a1" by plain
# hostname over the Lab's private network (same as the real track's
# parallel-SSH orchestration), and the pubkey served from workstation's own
# topology broker was successfully installed on data-a1 by the VM's startup
# script polling http://workstation:8081/topology.json.

OUTPUT=$(ssh -i /root/.ssh/id_ed25519 root@data-a1 'echo ssh-ready' 2>&1) || {
  echo "SSH to data-a1 failed: $OUTPUT"
  exit 1
}

if [ "$OUTPUT" != "ssh-ready" ]; then
  echo "Unexpected output from data-a1: $OUTPUT"
  exit 1
fi

echo "SSH from workstation to data-a1 succeeded"
