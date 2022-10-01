## 👋 Welcome to pihole 🚀  

pihole README  
  
  
## Run container

```shell
dockermgr update pihole
```

### via command line

```shell
docker pull casjaysdevdocker/pihole:latest && \
docker run -d \
--restart always \
--name casjaysdevdocker-pihole \
--hostname casjaysdev-pihole \
-e TZ=${TIMEZONE:-America/New_York} \
-v $HOME/.local/share/docker/storage/pihole/pihole/data:/data \
-v $HOME/.local/share/docker/storage/pihole/pihole/config:/config \
-p 80:80 \
casjaysdevdocker/pihole:latest
```

### via docker-compose

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
      - $HOME/.local/share/docker/storage/pihole/data:/data:z
      - $HOME/.local/share/docker/storage/pihole/config:/config:z
    ports:
      - 80:80
    restart: always
```

## Authors  

🤖 casjay: [Github](https://github.com/casjay) [Docker](https://hub.docker.com/r/casjay) 🤖  
⛵ CasjaysDevdDocker: [Github](https://github.com/casjaysdev) [Docker](https://hub.docker.com/r/casjaysdevdocker) ⛵  
