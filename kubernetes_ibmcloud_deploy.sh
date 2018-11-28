#!/usr/bin/env bash
set -e

# mustache templating using bash
curl -sSL https://git.io/get-mo -o ./k8s/mo
chmod +x ./k8s/mo

# TODO
export CONFIG_SERVICE_PASSWORD='config'
export NOTIFICATION_SERVICE_PASSWORD='notification'
export STATISTICS_SERVICE_PASSWORD='statistics'
export ACCOUNT_SERVICE_PASSWORD='account'
export MONGODB_PASSWORD='mongodb'
export IMG_VERSION=feat_k8s

# travis env
if [ "$CI" = "true" ]; then
    # TODO master based deployment only
    export KUBECONFIG=${PWD}/kube-config-mil01-microserv-demo.yml
fi

echo "Deployment to IBM Cloud"
kubectl get pods
kubectl get services

for yaml in ./k8s/*.yml ; do
  echo "Deploying $yaml"
  cat $yaml | ./k8s/mo | kubectl apply -f -
done