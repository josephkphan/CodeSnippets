
# Update apt Package index
sudo apt-get update

# install packages to allow apt over https
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common


# Add Docker official GPG Key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -


# Add Repo
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install docker-ce


# Installing Docker-compose

# get the current release
sudo curl -o /usr/local/bin/docker-compose -L "https://github.com/docker/compose/releases/download/1.15.0/docker-compose-$(uname -s)-$(uname -m)"

# Set the permissions
sudo chmod +x /usr/local/bin/docker-compose



