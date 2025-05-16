#!/bin/bash

# debug
env > /tmp/env.txt
kubectl get pods > /tmp/pods.txt
kubectl get pods | grep nginx > /tmp/pods_nginx.txt
#end debug

kubectl get pods | grep nginx
