# label the nodes
kubectl label nodes node01 color=blue

# create deployment
kubectl create deployment blue --image=nginx --replicas=3



# node taints
 kubectl describe node controlplane | grep Taints

 kubectl describe node node01 | grep Taints