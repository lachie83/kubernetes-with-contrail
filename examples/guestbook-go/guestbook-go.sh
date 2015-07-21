#!/bin/bash

kubectl create --namespace=guestbook -f guestbook-service.json
kubectl create --namespace=guestbook -f redis-master-service.json
kubectl create --namespace=guestbook -f redis-slave-service.json 
kubectl create --namespace=guestbook -f redis-master-controller.json
kubectl create --namespace=guestbook -f redis-slave-controller.json 
kubectl create --namespace=guestbook -f guestbook-controller.json 
