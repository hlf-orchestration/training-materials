#!/bin/sh

# add PPA from NodeSource
addRepo(){
curl -sL https://deb.nodesource.com/setup_12.x -o nodesource_setup.sh

# call the install script
. nodesource_setup.sh
}

addRepo
# install node.js
installNodeJS(){
apt-get install -y nodejs
}

installNodeJS
# check the version
#node -v
