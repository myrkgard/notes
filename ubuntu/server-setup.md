# Ubuntu server setup

## Basic install
- In virtualbox: use bridged network
- Install Ubuntu
- Check if IP address is correct: ```ip addr show```

## Optional: set up custom $USER
- sudo adduser $USER
- sudo usermod -aG adm,dialout,cdrom,floppy,sudo,audio,dip,video,plugdev,netdev,lxd $USER
- check success with: id $USER

## Configure firewall
- sudo ufw allow 22
- sudo ufw allow 52342
- sudo ufw enable

## Configure sshd
- sudo nano /etc/ssh/sshd_config
- ```Port 52342```
- reboot

## Optional: delete default user
* delete default user 'ubuntu'
* sudo userdel ubuntu 
* sudo rm -R /home/ubuntu/

## Close default ssh port
- sudo ufw deny 22 

## Set up docker
- Install docker
- Enable docker for user
