# Proof of Concept

This is a single-node smoke test for porting the V1 track
[`edb-pgd-multi-site-banking-demo`](https://play.instruqt.com/manage/jparton-challenge/tracks/edb-pgd-multi-site-banking-demo)
(a 7-VM PGD cluster plus a `workstation` container orchestrator) to a 2.0 Lab.

It proves the one pattern the real track's entire setup depends on: can a
container (`workstation`) and a VM (`data-a1`) discover and reach each other
by plain hostname over the Lab's private network, the same way the real
track's `workstation:8081` topology broker and SSH-key exchange work today.

What happens on create:

1. `workstation` (a container) generates an SSH keypair and serves the public key over HTTP on `:8081/topology.json`.
2. `data-a1` (a VM) polls `http://workstation:8081/topology.json` by hostname alone and installs the key into its `authorized_keys`.
3. Clicking Check below SSHes from `workstation` into `data-a1`, by hostname, to confirm the whole chain worked.

<instruqt-task id="ssh_ready"></instruqt-task>
