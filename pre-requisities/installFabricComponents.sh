cd /root && mkdir fabric
cd fabric

# install the latest production release from the 1.4.x branch
# curl -sSL http://bit.ly/2ysbOFE | bash -s -- <fabric_version> <fabric-ca_version> <thirdparty_version>

# curl -sSL http://bit.ly/2ysbOFE | bash -s -- 1.4.6 1.4.6 0.4.18

# latest production ready release, omit all version identifiers
# curl -sSL https://bit.ly/2ysbOFE | bash -s

# we use 2.2 in our examples
curl -sSL https://bit.ly/2ysbOFE | bash -s -- 2.2.1 1.4.9

# check downloaded images
docker images

# check the bin cmd
peer version
