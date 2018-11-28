#!/usr/bin/env bash

ls -l

export KUBECONFIG=${PWD}/kube-config-ibm-cloud-microserv-demo.yml

echo "Deployment to IBM Cloud"
kubectl get pods --all-namespaces

