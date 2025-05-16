# Single node Kubernetes cluster

You can run `kubectl` command from the terminal to interact with the kubernetes cluster.

```run
kubectl get nodes
```

This will give you a list of nodes in the cluster

```
root@workstation:/root# kubectl get nodes
NAME     STATUS   ROLES                  AGE   VERSION
server   Ready    control-plane,master   85s   v1.31.1+k3s1
```

<instruqt-task id="deploy_pod">
Deploy a container to this cluster:

```
kubectl run nginx --image=nginx
```

</instruqt-task>
