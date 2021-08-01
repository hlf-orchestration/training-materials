# download and extract go
wget -c https://dl.google.com/go/go1.14.9.linux-amd64.tar.gz -O - | tar -xz -C /usr/local

# add the go binary to the path
echo 'export PATH="$PATH:/usr/local/go/bin:/root/fabric/fabric-samples/bin"' >> $HOME/.profile

# point the GOPATH env var to the base fabric workspace folder
echo 'export GOPATH="$HOME/fabric"' >> $HOME/.profile

# reload the profile
source $HOME/.profile

# check the go version
go version

# check the vars
printenv | grep PATH


