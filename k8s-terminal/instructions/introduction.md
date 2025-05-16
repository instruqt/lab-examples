# Single node Kubernetes cluster

This labs contains sandbox consisting of a single node kubernetes cluster, and a workstation with a terminal preconfigured to interact with it using the `kubectl` cli.

The kubernetes cluster is created using the [kubernetes_cluster resource](https://docs.labs.instruqt.com/documentation/lab-reference/sandbox/kubernetes/cluster). The workstation is a [container](https://docs.labs.instruqt.com/documentation/lab-reference/sandbox/containers/container) host, based on the `bitnami/kubectl` docker image.

A `kubeconfig` configuration is injected into the `workstation` container, so it is pre-authenticated to interact with the kubernetes cluster. Finally a [terminal tab](https://docs.labs.instruqt.com/documentation/lab-reference/content/tabs/terminal) is added to expose the `workstation` container.

![sandbox overview](/assets/sandbox.png)
