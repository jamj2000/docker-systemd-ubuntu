FROM scratch
MAINTAINER jamj2000@gmail.com

# https://git.launchpad.net/cloud-images/+oci/ubuntu-base/tree/jammy?h=refs/heads/dist-amd64&id=67c49edefdf22f85b968f789723c71373e89f47d
ADD ubuntu-jammy-oci-amd64-root.tar.gz /
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get install -y \
    ubuntu-server \
    systemd \ 
    procps \
    less \
    iproute2 \
    sudo \ 
    ssh \
  ; systemctl enable ssh 

RUN useradd -ms /bin/bash usuario \ 
 && echo 'usuario:usuario' | chpasswd \
 && adduser usuario sudo 

RUN ln -fs /usr/share/zoneinfo/Europe/Madrid /etc/localtime

EXPOSE 22

STOPSIGNAL SIGRTMIN+3
CMD [ "/sbin/init" ]
#CMD ["bash"]
