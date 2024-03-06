apt-get update
apt-get install -y sudo
sudo apt-get install -y apt-transport-https
sudo apt-get install -y ca-certificates
sudo apt-get install -y curl
sudo apt-get install -y software-properties-common
sudo apt-get install -y git
sudo apt-get install -y make
sudo apt-get install -y vim
sudo apt-get install -y systemd
sudo apt-get update
sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker.io
sudo chmod 666 /var/run/docker.sock
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo su -c 'printf "{\n\t\"live-restore\": true\n}" > /etc/docker/docker.json'
sudo systemctl restart docker
sudo apt update
sudo apt install -y fcitx-hangul
sudo apt install -y fcitx-lib*
sudo apt install -y fonts-nanum*
sudo apt-get update
sudo apt-get install -y build-essential dkms linux-headers-$(uname -r)
sudo mkdir -p /mnt/cdrom
sudo mount /dev/cdrom /mnt/cdrom
cd /mnt/cdrom
sudo sh ./VBoxLinuxAdditions.run —nox11
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker