# Terraform install
sudo apt update

# Hashicorp GPG Key
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

# Hashicorp Linux repository
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

# Update and install
sudo apt-get update && sudo apt-get install terraform

# Verify
terraform -help

# Ansible Install
$ sudo apt-add-repository --yes --update ppa:ansible/ansible
$ sudo apt install ansible -y
ansible --version

# Docker Install
sudo apt update
sudo apt install curl -y
curl https://get.docker.com | sudo bash

sudo usermod -aG docker $(whoami)
sudo reboot

docker run --rm hello-world

# Docker Compose 
# make sure jq & curl is installed
sudo apt update
sudo apt install -y curl jq
# set which version to download (latest)
version=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')
# download to /usr/local/bin/docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/${version}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# make the file executable
sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version