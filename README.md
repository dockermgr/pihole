## 👋 Welcome to pihole 🚀  

pihole README  
  
  
## Requires scripts to be installed  

```shell
 sudo bash -c "$(curl -q -LSsf "https://github.com/systemmgr/installer/raw/main/install.sh")"
 systemmgr --config && systemmgr install scripts  
```

## Automatic install/update  

```shell
dockermgr update pihole
```

OR

```shell
mkdir -p "$HOME/.local/share/srv/docker/pihole/rootfs"
git clone "https://github.com/dockermgr/pihole" "$HOME/.local/share/CasjaysDev/dockermgr/pihole"
cp -Rfva "$HOME/.local/share/CasjaysDev/dockermgr/pihole/rootfs/." "$HOME/.local/share/srv/docker/pihole/rootfs/"
```

## via command line  

```shell
docker pull casjaysdevdocker/pihole:latest && \
docker run -d \
--restart always \
--privileged \
--name casjaysdevdocker-pihole \
--hostname casjaysdev-pihole \
-e TZ=${TIMEZONE:-America/New_York} \
-v $HOME/.local/share/srv/docker/pihole/rootfs/data:/data:z \
-v $HOME/.local/share/srv/docker/pihole/rootfs/config:/config:z \
-p 80:80 \
casjaysdevdocker/pihole:latest
```

## via docker-compose  

```yaml
version: "2"
services:
  pihole:
    image: casjaysdevdocker/pihole
    container_name: pihole
    environment:
      - TZ=America/New_York
      - HOSTNAME=casjaysdev-pihole
    volumes:
      - $HOME/.local/share/srv/docker/pihole/rootfs/data:/data:z
      - $HOME/.local/share/srv/docker/pihole/rootfs/config:/config:z
    ports:
      - 80:80
    restart: always
```

## Author  

📽 dockermgr: [Github](https://github.com/dockermgr) 📽  
🤖 casjay: [Github](https://github.com/casjay) [Docker](https://hub.docker.com/r/casjay) 🤖  
⛵ CasjaysDevDocker: [Github](https://github.com/casjaysdevdocker) [Docker](https://hub.docker.com/r/casjaysdevdocker) ⛵  
