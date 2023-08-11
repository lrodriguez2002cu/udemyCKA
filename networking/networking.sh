
# listening address kube-scheduler

k describe po kube-scheduler-controlplane -n kube-system


## Check etcd connections
netstat -anp | grep etcd

## networking weave, configure solution
ls /etc/cni/net.d/


## weave assigned ip addresses

  ip addr show weave
#Output:
# weave: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1376 qdisc noqueue state UP group default qlen 1000
#    link/ether 72:36:8e:99:90:c1 brd ff:ff:ff:ff:ff:ff
#    inet 10.244.0.1/16 brd 10.244.255.255 scope global weave
#       valid_lft forever preferred_lft forever