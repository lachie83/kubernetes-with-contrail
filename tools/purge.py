import vnc_api.vnc_api

NETWORKS_EXCLUDE=[
    'default-domain:default-project:__link_local__',
    'default-domain:default-project:default-virtual-network',
    'default-domain:default-project:ip-fabric',
    'default-domain:default-project:Public',
    ]

POLICIES_EXCLUDE=[
    'default-domain:default-project:default-network-policy',
    ]

def purge():
    client = vnc_api.vnc_api.VncApi()

    list = client.instance_ips_list()
    for ref in list['instance-ips']:
        print 'delete %s' % (':'.join(ref['fq_name']))
        client.instance_ip_delete(id=ref['uuid'])

    list = client.floating_ips_list()
    for ref in list['floating-ips']:
        print 'delete %s' % (':'.join(ref['fq_name']))
        client.floating_ip_delete(id=ref['uuid'])

    list = client.virtual_machine_interfaces_list()
    for ref in list['virtual-machine-interfaces']:
        print 'delete %s' % (':'.join(ref['fq_name']))
        client.virtual_machine_interface_delete(id=ref['uuid'])

    list = client.virtual_machines_list()
    for ref in list['virtual-machines']:
        print 'delete %s' % (':'.join(ref['fq_name']))
        client.virtual_machine_delete(id=ref['uuid'])

    list = client.floating_ip_pools_list()
    for ref in list['floating-ip-pools']:
        print 'delete %s' % (':'.join(ref['fq_name']))
        client.floating_ip_pool_delete(id=ref['uuid'])

    list = client.virtual_networks_list()
    for ref in list['virtual-networks']:
        if ':'.join(ref['fq_name']) in NETWORKS_EXCLUDE:
            continue
        print 'delete %s' % (':'.join(ref['fq_name']))
        client.virtual_network_delete(id=ref['uuid'])

    list = client.network_policys_list()
    for ref in list['network-policys']:
        if ':'.join(ref['fq_name']) in POLICIES_EXCLUDE:
            continue
        print 'delete %s' % (':'.join(ref['fq_name']))        
        client.network_policy_delete(id=ref['uuid'])


if __name__ == '__main__':
    purge()