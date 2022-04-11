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
```
(Reboot if it still asks for root rights.)
