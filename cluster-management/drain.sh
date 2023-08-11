# drain the node
k drain node01 --ignore-daemonsets

# check the app is working
k get po --all-namespaces | grep hr-app

# drain the node
k drain node01 --ignore-daemonsets --force