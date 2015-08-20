# Add Static route

If you're running OpenContrail for you OpenStack overlay network you add a static route as follows. This is required for external access.

This statically routes a block down a given Network Port UUID. This is to route traffic to be picked up by a vrouter gateway.

On the underlay contrail-controller. Do the following.

```
python interface-route.py add <interface-uuid> 10.161.132.0/22
```

Confirm it worked by checking the vrf on the MX or running the following. Find the network port UUID and look for the static_route_list

```
http://<vrouter>:8085/Snh_ItfReq?name=
```
