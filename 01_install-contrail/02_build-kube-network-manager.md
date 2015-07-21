# Build kube-network-manager

kube-network-manager will be built and run on the contrail-controller by default. 

```
nohup /home/ubuntu/contrail/kube-network-manager --master=http://10.161.136.17:8080 -- --contrail_api=127.0.0.1 --public_net="10.1.0.0/16" --portal_net="10.254.0.0/16" --private_net="10.0.0.0/16" 2>&1 > /var/log/contrail/kube-network-manager.log
ubuntu@contrail-controller-01:~$ nohup: ignoring input and redirecting stderr to stdout
nohup: ignoring input and redirecting stderr to stdout

```
