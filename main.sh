#!/bin/bash

#ubuntu18

sudo docker network create -d bridge --subnet=172.25.30.0/24 ubuntu18_net
sudo docker build -t ubuntu18 ./ubuntu18

sudo docker run -dt --network=ubuntu18_net --name=Ubuntu18_1 --ip=172.25.30.2 --rm ubuntu18
sudo docker run -dt --network=ubuntu18_net --name=Ubuntu18_2 --ip=172.25.30.3 --rm ubuntu18

#ubuntu20

sudo docker network create -d bridge --subnet=172.25.40.0/24 ubuntu20_net
sudo docker build -t ubuntu20 ./ubuntu20

sudo docker run -dt --network=ubuntu20_net --name=Ubuntu20_1 --ip=172.25.40.2 --rm ubuntu20
sudo docker run -dt --network=ubuntu20_net --name=Ubuntu20_2 --ip=172.25.40.3 --rm ubuntu20

#centos7

sudo docker network create -d bridge --subnet=172.25.10.0/24 centos7_net
sudo docker build -t centos7 ./centos7

sudo docker run -dt --network=centos7_net --name=Centos7_1 --ip=172.25.10.2 --rm centos7
sudo docker run -dt --network=centos7_net --name=Centos7_2 --ip=172.25.10.3 --rm centos7

#centos8

sudo docker network create -d bridge --subnet=172.25.20.0/24 centos8_net
sudo docker build -t centos8 ./centos8

sudo docker run -dt --network=centos8_net --name=Centos8_1 --ip=172.25.20.2 --rm centos8
sudo docker run -dt --network=centos8_net --name=Centos8_2 --ip=172.25.20.3 --rm centos8




