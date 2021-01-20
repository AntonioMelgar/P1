FROM centos:8
MAINTAINER amelgar

RUN yum install -y openssh-server
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''
RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key -N ''
RUN useradd -ms /bin/bash docker
RUN echo 'docker:docker' | chpasswd
RUN echo 'docker ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN rm -rf /run/nologin
CMD ["/usr/sbin/sshd", "-D"]
