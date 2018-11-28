#!/usr/bin/env bash

echo "Cleanups of the deployments in IBM Cloud"
kubectl get pods
kubectl delete deployment account-mongodb account-service auth-mongodb auth-service config gateway monitoring notification-mongodb notification-service rabbitmq registry statistics-mongodb statistics-service turbine-stream-service
kubectl get pods

kubectl get services
kubectl delete service account-mongodb account-service auth-mongodb auth-service config gateway monitoring notification-mongodb notification-service rabbitmq registry statistics-mongodb statistics-service turbine-stream-service
kubectl get services