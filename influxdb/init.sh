#!/bin/bash

helm install stable/influxdb --name influx
kubectl expose service influx-influxdb --type=NodePort