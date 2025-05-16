# Single node Kubernetes cluster

You can run `kubectl` command from the terminal to interact with the kubernetes cluster.

<instruqt-code language="shell" no-copy="true" run="true">
kubectl get nodes
</instruqt-code>

This will give you a list of nodes in the cluster:

<instruqt-code language="shell" no-copy="true">
root@workstation:/root# kubectl get nodes
NAME     STATUS   ROLES                  AGE   VERSION
server   Ready    control-plane,master   85s   v1.31.1+k3s1
</instruqt-code>

<instruqt-task id="deploy_pod">
Deploy a container to this cluster:

```no-copy,run
kubectl run nginx --image=nginx
```

</instruqt-task>
