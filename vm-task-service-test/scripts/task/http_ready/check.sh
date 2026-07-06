#!/bin/sh
# Runs directly on the vm (task condition target = resource.vm.workshop),
# the same way the V1 track's per-challenge check scripts ran plain bash
# against the workshop VM host rather than inside a single container.
curl -sf http://localhost:8000/ | grep -q "workshop-vm-ready"
