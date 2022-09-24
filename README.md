# docker-ubuntuserver-systemd
Ubuntu Server with systemd within Docker


This is a Docker image for run containers with Ubuntu Server 22.04 (including systemd support).
It can be used as a virtual machine with less load.


## To run with docker-compose

```sh
git  clone  git@github.com:jamj2000/docker-systemd-ubuntu.git
docker-compose  up  -d
```

## To run interactively with docker

```sh
docker run -it \
  --tmpfs /tmp \
  --tmpfs /run \
  -v /run/lock:/run/lock \
  -v /sys/fs/cgroup:/sys/fs/cgroup:ro \
  -p 2222:22 \
  jamj2000/ubuntu:22.04
```

## To run in background with docker

```sh
docker run -d \
  --tmpfs /tmp \
  --tmpfs /run \
  -v /run/lock:/run/lock \
  -v /sys/fs/cgroup:/sys/fs/cgroup:ro \
  -p 2222:22 \
  jamj2000/ubuntu:22.04
```
