# Adding static route to external block on nodes not running the vgw

In this example we have a single node running the vrouter vgw supporting external access to Kubernetes. On subsequent node we need to route the external block via the data network interface on the node running the vgw
```
ip route add 10.161.132.0/22 via 10.161.136.19
```
