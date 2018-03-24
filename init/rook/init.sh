#!/bin/bash

kubectl apply -f *.yaml

#copy rook secret to namespace where it will be used
kubectl get secret rook-rook-user -o json | jq '.metadata.namespace = "default"' | kubectl apply -f -
