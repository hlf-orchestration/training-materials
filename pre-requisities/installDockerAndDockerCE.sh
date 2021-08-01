#!/bin/sh
# set up the repository

updateRepo(){
sudo apt install \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg-agent \
  software-properties-common
}

updateRepo

# add Docker’s official GPG key
addOfficialKeysForDocker(){
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
}

addOfficialKeysForDocker

# set up the stable repository
updateAptRepo(){
sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"
}

updateAptRepo
# install docker engine
installDocker(){
apt update
apt install docker-ce docker-ce-cli containerd.io
}

installDocker

# install docker-compose
installDockerCompose(){
curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# apply executable permissions to the binary
sudo chmod +x /usr/local/bin/docker-compose

# check the docker-compose version
docker-compose --version

}

installDockerCompose
