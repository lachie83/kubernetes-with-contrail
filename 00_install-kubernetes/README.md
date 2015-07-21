# Install Kubernetes

## Prerequisites

* Ubuntu 14.04 host

## Roles & Services

* Kubernetes Master
** etcd
** kube-apiserver
** kube-scheduler
** kube-controller-manager

* Kubernetes Node
** kubelet

# Installation

Run the shell script corresponding to the role

# Post-Installation

* Copy the /etc/init.d, /etc/init and /etc/default scripts for the services running on the corresponding node
* Make the modifications to /etc/default/<service-name> to suit your environment

# Starting

* Use upstart to start/stop/restart the services
** eg. service kubelet start

# Caveats

* Log directories don't appear to be created
