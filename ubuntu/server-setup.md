# Ubuntu server setup

## Basic install
- In virtualbox: use bridged network
- Install Ubuntu
- Check if IP address is correct: ```ip addr show```

## Optional: set up custom $USER
- sudo adduser $USER
- sudo usermod -aG adm,dialout,cdrom,floppy,sudo,audio,dip,video,plugdev,netdev,lxd $USER
- check success with: id $USER

## Optional: delete default user
* delete default user 'ubuntu'
* sudo userdel ubuntu 
* sudo rm -rf /home/ubuntu/

## Configure sshd
- sudo nano /etc/ssh/sshd_config
- ```Port 52342```

## Configure firewall
- wget firewall-setup.sh
- chmod +x firewall-setup.sh
- sudo ./firewall-setup
- ssh connection will be lost after this, server will reboot

## Set up docker
- Install docker
- Enable docker for user
- Login to ghcr.io

## Clone repo that contains the system's docker-compose file
- git clone https://github.com/myrkgard/pw.git

## Run system
- cd pw/
- docker-compose up

