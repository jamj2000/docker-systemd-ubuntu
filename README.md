# Ubuntu Server with systemd within Docker

This is a Docker image for run containers with Ubuntu Server 22.04 (including systemd support).
It can be used as a virtual machine with less load.


## To download and get into

```sh
git  clone  git@github.com:jamj2000/docker-systemd-ubuntu.git
cd   docker-systemd-ubuntu
```

## If you want To run in background with docker-compose

```sh
docker-compose up -d
```

## If you want To run in background with docker

```sh
docker run -d \
  --tmpfs /tmp \
  --tmpfs /run \
  -v /run/lock:/run/lock \
  -v /sys/fs/cgroup:/sys/fs/cgroup:ro \
  -p 2222:22 \
  jamj2000/ubuntu:22.04
```

## To connect using SSH

```ssh
ssh usuario@localhost -p 2222
```


## If you want To run interactively with docker

```sh
docker run -it \
  --tmpfs /tmp \
  --tmpfs /run \
  -v /run/lock:/run/lock \
  -v /sys/fs/cgroup:/sys/fs/cgroup:ro \
  -p 2222:22 \
  jamj2000/ubuntu:22.04
```

You can init session with 
- Login: `usuario`
- Password: `usuario`

You can shutdown with command `poweroff`


