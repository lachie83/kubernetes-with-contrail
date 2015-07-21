# Contrail Specific Steps for adding a Kubernetes node

```
sudo apt-get install git ruby
git clone  https://github.com/Juniper/contrail-kubernetes
```

```
sudo iptables -F -t nat
```

# Make sure all the nodes are in /etc/hosts
```
10.161.136.17 kubernetes-master-01
10.161.136.18 contrail-controller-01
10.161.136.19 kubernetes-node-021
10.161.136.20 kubernetes-node-022
```
* Set ubuntu password to suit the command below or get ssh keys sorted out
* Confirm that this works -- sudo sshpass -p ubuntu ssh -t  ubuntu@contrail-controller-01 date

```
sudo ruby /home/ubuntu/contrail-kubernetes/scripts/opencontrail-install/contrail_install.rb -I eth1 -k -c contrail-controller-01 -r compute -s

mkdir -p /var/log/kubernetes
```

```
ethtool -K eth1 tx off
ifconfig eth1 mtu 1460
```

