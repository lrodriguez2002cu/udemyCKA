
# Note  tha api-server is on node control plane
# in: kubectl describe po kube-apiserver-controlplane -n kube-system
# api server crt file is in: /etc/kubernetes/pki/apiserver.crt
openssl x509 -in /etc/kubernetes/pki/apiserver.crt -text -noout | grep Subject:

# CA?
 openssl x509 -in /etc/kubernetes/pki/apiserver.crt -text -noout | grep Issuer:


#etcd server CN
 openssl x509 -in /etc/kubernetes/pki/etcd/server.crt -text -noout | grep Subject: