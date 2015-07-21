#!/bin/bash

# Taken from https://raw.githubusercontent.com/lachie83/murano-apps/patch-1/Docker/Kubernetes/KubernetesCluster/elements/kubernetes/install.d/57-kubernetes

apt-get install curl wget linux-libc-dev git gcc libc6-dev bridge-utils haproxy

SVC_ROOT=/opt/bin

KUBE_LATEST_VERSION="v1.0.1"

KUBE_LATEST_URL="https://github.com/GoogleCloudPlatform/kubernetes/releases/download/${KUBE_LATEST_VERSION}/kubernetes.tar.gz"

mkdir -p ${SVC_ROOT}
pushd ${SVC_ROOT}

# Install latest kubernetes
wget -O ${SVC_ROOT}/kubernetes-latest.tar.gz $KUBE_LATEST_URL
tar xzvf ${SVC_ROOT}/kubernetes-latest.tar.gz
rm -f ${SVC_ROOT}/kubernetes-latest.tar.gz

tar xzvf ${SVC_ROOT}/kubernetes/server/kubernetes-server-linux-amd64.tar.gz
mv ${SVC_ROOT}/kubernetes ${SVC_ROOT}/kubernetes-latest

cp ${SVC_ROOT}/kubernetes-latest/server/bin/* ${SVC_ROOT}/

rm -rf ${SVC_ROOT}/kubernetes-latest

# Install Go
wget -O go.tar.gz https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz
tar xzvf go.tar.gz
mv ${SVC_ROOT}/go /usr/local/go
export PATH=$PATH:/usr/local/go/bin

# Update system PATH
sed -i 's/PATH="/PATH="\/opt\/bin:\/usr\/local\/go\/bin:/g' /etc/environment
popd
