#!/bin/bash

# Join worker nodes to the Kubernetes cluster
echo "[TASK 1] Join node to Kubernetes Cluster"
yum install -q -y sshpass >/dev/null 2>&1
sshpass -p "kubeadmin" scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no kmaster:/joincluster.sh /joincluster.sh 2>/dev/null
bash /joincluster.sh >/dev/null 2>&1
#Install ssh so that we can login using putty
echo "[TASK 5] Install ssh so that we can access using putty"
yum –y install openssh-server openssh-clients
systemctl start sshd
systemctl status sshd
systemctl enable sshd