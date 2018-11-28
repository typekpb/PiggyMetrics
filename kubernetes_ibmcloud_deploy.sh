#!/usr/bin/env bash

ls -l

export KUBECONFIG=${PWD}/kube-config-mil01-microserv-demo.yml

echo "Deployment to IBM Cloud"
kubectl get pods --all-namespaces

