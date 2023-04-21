### Docker and docker compose prerequisites
sudo apt-get install curl -y
sudo apt-get install gnupg -y
sudo apt-get install ca-certificates -y
sudo apt-get install lsb-release -y
### Download the docker gpg file to Ubuntu
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

### Add Docker and docker compose support to the Ubuntu's packages list
 echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y
 
### Install docker and docker compose on Ubuntu
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin docker-compose -y
 
### install aws cli
sudo apt-get install awscli -y

#### install docker cli preview
sudo curl -L https://raw.githubusercontent.com/docker/compose-cli/main/scripts/install/install_linux.sh | sh

