kubeadm init --apiserver-cert-extra-sans=controlplane --apiserver-advertise-address 192.16.160.9 --pod-network-cidr=10.244.0.0/16



#To start using your cluster, you need to run the following as a regular user:
#
#  mkdir -p $HOME/.kube
#  sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
#  sudo chown $(id -u):$(id -g) $HOME/.kube/config
#
#Alternatively, if you are the root user, you can run:
#
#  export KUBECONFIG=/etc/kubernetes/admin.conf
#
#You should now deploy a pod network to the cluster.
#Run "kubectl apply -f [podnetwork].yaml" with one of the options listed at:
#  https://kubernetes.io/docs/concepts/cluster-administration/addons/
#
#Then you can join any number of worker nodes by running the following on each as root:
#
#kubeadm join 192.16.160.9:6443 --token 0e4uvh.c920aq3m6gpoli6w \
#        --discovery-token-ca-cert-hash sha256:82da660d99f59b666aac6231f5e391a22f93881eee761d3e5d6a294d68afc649 

    sysctl net.bridge.bridge-nf-call-iptables net.bridge.bridge-nf-call-ip6tables net.ipv4.ip_forward
  vi /etc/containerd/config.toml
  sudo systemctl restart containerd
  sudo apt-get update
  sudo apt-get install -y apt-transport-https ca-certificates curl
  curl -fsSL https://dl.k8s.io/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-archive-keyring.gpg
  mkdir -p /etc/apt/keyrings
  curl -fsSL https://dl.k8s.io/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-archive-keyring.gpg
  echo "deb [signed-by=/etc/apt/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
  sudo apt-get update
  sudo apt-get install -y kubelet kubeadm kubectl
  sudo apt-get install -y kubelet=1.27.0-00 kubeadm=1.27.0-00 kubectl=1.27.0-00 --allow-downgrades
  sudo apt-mark hold kubelet kubeadm kubectl
  kubelet --version
  kubectl get node
  ifconfig
  kubeadm init --apiserver-cert-extra-sans=controlplane --apiserver-advertise-address 192.16.160.9 --pod-network-cidr=10.244.0.0/16
  kubectl get nodes
  curl -LO https://raw.githubusercontent.com/flannel-io/flannel/v0.20.2/Documentation/kube-flannel.yml
  ls
  vi kube-flannel.yml 
  kubectl apply -f  kube-flannel.yml 
  kubectl get nodes
  history
