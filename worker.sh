sudo apt-get update
sudo apt-get install docker.io
docker --version
sudo systemctl enable docker
sudo systemctl status docker
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
sudo apt-get install curl
sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
sudo apt-get install kubeadm kubelet kubectl
sudo apt-mark hold kubeadm kubelet kubectl
kubeadm version
sudo swapoff –a
sudo hostnamectl set-hostname worker01
kubeadm join 192.168.0.167:6443 --token c545pm.4dj32v1si5x22kon         --discovery-token-ca-cert-hash sha256:5ac3a86db95788bb1b8855359194c9c2e5139450496033764e3b0bc66bd7c75c
