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

# 도커 패키지 신뢰성 추가
# f - http의 요청 헤더의 Content-Type을 multipart/form-data로 설정
# s - silent로 진행과정 및 오류 생략
# S - SSL 이용
# L - curl의 결과가 Redirection이더라도, 해당 URL로 작업을 이어감
# 파이프 이후의 apt-key는 다운로드 받은 패키지를 인증된 패키지로 인식 시키기 위해 키 리스트에 패키지를 추가
# (apt는 기본적으로 인증된 패키지들을 키 리스트로 관리)
sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

# 도커를 설치할 수 있도록 Repository 추가
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