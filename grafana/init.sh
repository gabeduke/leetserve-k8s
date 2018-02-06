#!/bin/bash

# https://github.com/juju-solutions/bundle-canonical-kubernetes/wiki/Local-Persistent-Storage-Example

kubectl apply -f storage-class.yaml
kubectl apply -f local-storage.yaml

helm install --name grafana -f leetserve.yaml stable/grafana

juju expose kubernetes-worker
juju config kubernetes-worker ingress=true

export POD_NAME=$(kubectl get pods --namespace default -l "app=grafana-grafana,component=grafana" -o jsonpath="{.items[0].metadata.name}")
kubectl --namespace default port-forward $POD_NAME 3000