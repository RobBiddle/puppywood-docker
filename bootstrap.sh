sudo apt update -y
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
sudo apt install git -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update -y
apt-cache policy docker-ce
sudo apt install docker-ce -y
# curl -fsSL https://get.docker.com -o get-docker.sh
# sudo sh get-docker.sh
sudo groupadd docker
sudo usermod -aG docker ${USER}
sudo systemctl enable docker
cd ~
rm -rf ~/puppywood-docker
git clone https://github.com/RobBiddle/puppywood-docker.git
chmod +x ~/puppywood-docker/bootstrap.sh
chmod +x ~/puppywood-docker/launch.sh
sudo mkdir -p /opt/webrtc-streamer
sudo cp ~/puppywood-docker/config.json /opt/webrtc-streamer/config.json
sudo mkdir -p /opt/traefik
sudo touch /opt/traefik/acme.json && sudo chmod 600 /opt/traefik/acme.json
mkdir -p /opt/nginx
sudo sudo touch /opt/nginx/index.html
sudo cp ~/puppywood-docker/traefik.toml /opt/traefik/traefik.toml
docker swarm init
docker network create web --scope swarm
. ~/puppywood-docker/launch.sh
