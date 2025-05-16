#!/bin/bash

# debug
env > /tmp/env.txt
/opt/bitnami/kubectl/bin/kubectl get pods > /tmp/pods.txt
/opt/bitnami/kubectl/bin/kubectl get pods | grep nginx > /tmp/pods_nginx.txt
#end debug

/opt/bitnami/kubectl/bin/kubectl get pods | grep nginx
