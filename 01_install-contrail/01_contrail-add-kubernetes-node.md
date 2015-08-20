# Contrail Specific Steps for adding a Kubernetes node

* Pull the contrail-kubernetes repo
```
sudo apt-get install git ruby
git clone  https://github.com/Juniper/contrail-kubernetes
```

* Clean up the nat table
```
sudo iptables -F -t nat
```

# Make sure all the nodes are in /etc/hosts
```
10.161.136.17 kubernetes-master-01
10.161.136.19 kubernetes-node-021
10.161.136.20 kubernetes-node-022
```
* Set ubuntu password to suit the command below or get ssh keys sorted out
* Confirm that this works -- sudo sshpass -p ubuntu ssh -t  ubuntu@kubernetes-master-01 date

```
sudo ruby /home/ubuntu/contrail-kubernetes/scripts/opencontrail-install/contrail_install.rb -I eth1 -k -c kubernetes-master-01 -r compute -s

mkdir -p /var/log/kubernetes
```

* Turn off checksumming on the data vlan interfaces
```
ethtool -K eth1 tx off
ifconfig eth1 mtu 1460
```

