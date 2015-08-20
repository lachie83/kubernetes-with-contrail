# Build kube-network-manager

kube-network-manager will be built and run on the contrail-controller by default. If the k8s-master and contrail-controller are colocated, no further changes required. 

```
nohup /home/ubuntu/contrail/kube-network-manager --master=http://127.0.0.1:8080 -- --contrail_api=127.0.0.1  --public_net="10.161.132.0/22" --portal_net="10.254.0.0/16" --private_net="10.0.0.0/16" 2>&1 > /var/log/contrail/kube-network-manager.log
ubuntu@contrail-controller-01:~$ nohup: ignoring input and redirecting stderr to stdout
nohup: ignoring input and redirecting stderr to stdout
```
