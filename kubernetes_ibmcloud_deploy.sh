#!/usr/bin/env bash

ls -l

export kube-config-ibm-cloud-microserv-demo.yml

echo "Deployment to IBM Cloud"
kubectl get pods --all-namespaces

