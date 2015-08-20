# Adding a Gateway to a given vrouter

In this example we are going to route the prefix 10.161.132.0/22
```
Add the following to /etc/contrail/contrail-vrouter-agent.conf

[GATEWAY-0]
# Name of the routing_instance for which the gateway is being configured
routing_instance=default-domain:default-project:Public:Public

# Gateway interface name
interface=vgw

# Virtual network ip blocks for which gateway service is required. Each IP
# block is represented as ip/prefix. Multiple IP blocks are represented by
# separating each with a space
ip_blocks=10.161.132.0/22

—
ip-up script for the gateway interface:

ip link add vgw type vhost
ip link set vgw address 00:00:5e:00:01:00
ip link set vgw up
ip route add 10.161.132.0/22 dev vgw

service contrail-vrouter-agent restart
```
