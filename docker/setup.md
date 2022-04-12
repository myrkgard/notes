# Setup docker on Ubuntu

## Install

```
sudo snap install docker
```

## Configure for user

```
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
rebbot
```

## Log in to ghcr.io with personal access token (PAT)
- docker login ghcr.io -u $GITHUB_USER -p $PAT
