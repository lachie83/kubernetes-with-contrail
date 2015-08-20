# Install Kubernetes

## Prerequisites

* Ubuntu 14.04 host

## Roles & Services

* Kubernetes Master
 * etcd
 * kube-apiserver
 * kube-scheduler
 * kube-controller-manager

* Kubernetes Node
 * kubelet
 
* NB. kube-proxy is not needed in this configuration. 

# Installation

* Run the shell script corresponding to the role
* Alternatively you can run 00_install-kubernetes-master.sh and snapshot the instance and then deploy services depending on the role.

# Post-Installation

* Copy the /etc/init.d, /etc/init and /etc/default scripts for the services running on the corresponding node
* Make the modifications to /etc/default/<service-name> to suit your environment

# Starting

* Use upstart to start/stop/restart the services
 * eg. ```service kubelet start```

# Caveats

* Log directories don't appear to be created
* ```mkdir -p /var/log/kubernetes```
