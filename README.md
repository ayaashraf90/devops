# devops
*** install K8s cluster with one master and one worker , install juice-shop from docker hub and configure service and ingress nginx*******
*********install K8s on master node ********

apt-get update

apt-get install docker.io

docker ––version

systemctl enable docker

systemctl status docker

apt-get install curl

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add

apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"

apt-get install kubeadm kubelet kubectl

apt-mark hold kubeadm kubelet kubectl

kubeadm version

swapoff –a

sudo hostnamectl set-hostname master-node

sudo kubeadm init --pod-network-cidr=10.244.0.0/16

mkdir -p $HOME/.kube

kubectl get nodes

sudo kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml


************************* install and configure worker node ************

apt-get update

apt-get install docker.io

docker ––version

systemctl enable docker

systemctl status docker

apt-get install curl

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add

apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"

apt-get install kubeadm kubelet kubectl

apt-mark hold kubeadm kubelet kubectl

kubeadm version

swapoff –a

sudo hostnamectl set-hostname worker01

kubeadm join 192.168.0.167:6443 --token c545pm.4dj32v1si5x22kon         --discovery-token-ca-cert-hash sha256:5ac3a86db95788bb1b8855359194c9c2e5139450496033764e3b0bc66bd7c75c

*******************install pod,service,ingress *******************

git clone https://github.com/kubernetes/ingress-nginx.git

kubectl create -f ./deploy/static/provider/baremetal/1.23/deploy.yaml

kubectl create -f app.yaml

curl 10.244.1.11 -H "Host: juice-shop.example.com"

