## 👋 Welcome to README.md 🚀  

pihole README  
  
  
## Requires scripts to be installed  

```shell
 sudo bash -c "$(curl -q -LSsf "https://github.com/systemmgr/installer/raw/main/install.sh")"
 systemmgr --config && systemmgr install scripts  
```

## Automatic install/update  

```shell
dockermgr update README.md
```

OR

```shell
mkdir -p "$HOME/.local/share/srv/docker/README.md/dataDir"
git clone "https://github.com/dockermgr/README.md" "$HOME/.local/share/CasjaysDev/dockermgr/README.md"
cp -Rfva "$HOME/.local/share/CasjaysDev/dockermgr/README.md/dataDir/." "$HOME/.local/share/srv/docker/README.md/dataDir/"
```

## via command line  

```shell
docker pull casjaysdevdocker/README.md:latest && \
docker run -d \
--restart always \
--privileged \
--name casjaysdevdocker-README.md \
--hostname casjaysdev-README.md \
-e TZ=${TIMEZONE:-America/New_York} \
-v $HOME/.local/share/srv/docker/README.md/dataDir/data:/data:z \
-v $HOME/.local/share/srv/docker/README.md/dataDir/config:/config:z \
-p 80:80 \
casjaysdevdocker/README.md:latest
```

## via docker-compose  

```yaml
version: "2"
services:
  README.md:
    image: casjaysdevdocker/README.md
    container_name: README.md
    environment:
      - TZ=America/New_York
      - HOSTNAME=casjaysdev-README.md
    volumes:
      - $HOME/.local/share/srv/docker/README.md/dataDir/data:/data:z
      - $HOME/.local/share/srv/docker/README.md/dataDir/config:/config:z
    ports:
      - 80:80
    restart: always
```

## Author  

🤖 casjay: [Github](https://github.com/casjay) [Docker](https://hub.docker.com/r/casjay) 🤖  
📽 dockermgr: [Github](https://github.com/dockermgr) [Docker](https://hub.docker.com/r/dockermgr) 📽  
⛵ CasjaysDev Docker: [Github](https://github.com/casjaysdevdocker) [Docker](https://hub.docker.com/r/casjaysdevdocker) ⛵  
