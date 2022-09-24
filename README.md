# docker-ubuntuserver-systemd
Ubuntu Server with systemd within Docker



## To run interactively with docker

```sh
docker run --tmpfs /tmp  --tmpfs /run -v /run/lock:/run/lock -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 2222:22 -it  jamj2000/ubuntu:22.04
```

## To run in background with docker

```sh
docker run --tmpfs /tmp  --tmpfs /run -v /run/lock:/run/lock -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 2222:22 -d  jamj2000/ubuntu:22.04
```

## To run with docker-compose

```sh
docker-compose up -d
```
