# Building Contrail Controller and the kube-network-manager

```
sudo apt-get install git ruby
git clone -b https://github.com/Juniper/contrail-kubernetes
```

# Make sure all the nodes are in /etc/hosts
```
10.161.136.17 kubernetes-master-01
10.161.136.18 contrail-controller-01
10.161.136.19 kubernetes-node-021
10.161.136.20 kubernetes-node-022
```

```
sudo ruby /home/ubuntu/contrail-kubernetes/scripts/opencontrail-install/contrail_install.rb --controller contrail-controller-01 -k -s
```
