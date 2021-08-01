#!/bin/sh
# update the OS
updateAndUpgrade(){
apt update && apt upgrade
}
# install some useful helpers
installHelpers(){
apt install tree jq gcc make
}

updateAndUpgrade

installHelpers
