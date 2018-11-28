#!/usr/bin/env bash
set -e

# mustache templating using bash
curl -sSL https://git.io/get-mo -o ./k8s/mo
chmod +x ./k8s/mo

# travis env
if [ "$CI" = "true" ]; then
    export IMG_VERSION=feat_k8s # TODO master based deployment only
    export KUBECONFIG=${PWD}/kube-config-mil01-microserv-demo.yml
else
    # local env
    export CONFIG_SERVICE_PASSWORD='config'
    export NOTIFICATION_SERVICE_PASSWORD='notification'
    export STATISTICS_SERVICE_PASSWORD='statostics'
    export ACCOUNT_SERVICE_PASSWORD='account'
    export MONGODB_PASSWORD='mongodb'
    export IMG_VERSION=feat_k8s
fi

echo "Deployment to IBM Cloud"
kubectl get pods
kubectl get services

for yaml in ./k8s/*.yml ; do
  echo "Deploying $yaml"
  cat $yaml | ./k8s/mo | kubectl apply -f -
done