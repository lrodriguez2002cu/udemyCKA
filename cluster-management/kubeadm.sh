apt-mark unhold kubeadm && \
apt-get update && apt-get install -y kubeadm=1.27.0-00 && \
apt-mark hold kubeadm

