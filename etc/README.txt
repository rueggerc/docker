# Images
docker image build -t restjersey:latest .
docker image ls
docker rmi restjersey:latest
docker image build -t restjersey:1.0 .


# Containers
docker image build -t restjersey:latest .
docker container run -d --name restjersey1 -p 8088:8080 restjersey:latest
docker container ls
docker ps -a
docker stop restjersey1
docker rm restjersey1


# ReplicaSet
kubectl create -f restjersey-rs.yaml
kubectl get rs/restjersey-rs
kubectl get rs restjersey-rs
kubectl get replicaset restjersey-rs
kubectl get pods --show-labels

# Delete
kubectl delete rs rest-jersey-rs

# Services
kubectl create -f restjersey-svc.yaml
kubectl get svc restjersey-svc
kubectl describe svc restjersey-svc



################
# kube
################
kubectl version --output=yaml




Docker
===========


Install
-------
Book: wget -q0- https://get.docker.com | sh
Digital Ocean: curl -fsSL https://get.docker.com/ | sh

sudo sysemctl start docker
sudo systemtl enable docker

sudo usermod -aG docker chris
sudo usermod -aG docker hadoop

docker version

docker run hello-world
docker search centos


Images
======
template/class
virtual machine template
object that contains an OS filesystem + application


List Images:
============
docker image ls
docker images

Retrieving Docker Images
========================
"pulling"
docker image pull ubuntu:latest
docker image pull centos:latest


Start/run Container
===================
docker container run -it centos:latest
CTRL-PQ exit container without terminating it

docker container run --name ctr1 -it alpine:latest sh

List running docker containers
docker container ls
(Look at NAMES column) == hopeful_poinca
docker ps -a


Attach shell to running container
docker container exec -it hopeful_poincare bash

Stop Container
==============
docker container stop hopeful_poincare

Remove Container
================
docker container stop <id or name>
docker container rm <id or name>

EXAMPLE
=========================
1. clone an app from git Repo
2. Inspect dockerfile
3. containerize it
4. Run as a Container

1. git clone htts://github.com/nigelpoulton/psweb.git  
   sudo yum install curl-devel
   git clone git@github.com:nigelpoulton/psweb.git
   
2 Inspect Dockerfile
Alpine Linux
cat Dockerfile

3. cd psweb
   docker image build -t test:latest .
  
4. docker image ls
   docker container run -d \
          --name web1 \
          -p 8080:8080 \
          test:latest
   docker container run -d --name web1 -p 8080:8080 test:latest
   BROWSER=>http://captain:8080


HIGH LEVEL ARCH:
================
docker client =>  daemon (REST)
                    |
                  containerd   container supervisor, manages lifecyle, written by Docker, Inc.
                    |
                  runc         OCI-Compliant container runtime



IMAGES
==================================
