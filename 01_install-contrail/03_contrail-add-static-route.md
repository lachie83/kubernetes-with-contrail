# Add Static route

This statically routes a block down a given Network Port UUID. This is to route traffic to be picked up by a vrouter gateway

On the underlay contrail-controller. Do the following.

```
python interface-route.py add 0104380f-5699-4718-9df4-9dbf6358b836 10.161.132.0/22
```

Confirm it worked by checking the vrf on the MX or running the following. Find the network port UUID and look for the static_route_list

```
http://<vrouter>:8085/Snh_ItfReq?name=
```