sudo apt update -y
sudo apt install git -y
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo groupadd docker
sudo usermod -aG docker $USER
sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
sudo systemctl enable docker
cd ~
git clone https://github.com/RobBiddle/puppywood-docker.git
mkdir -p /opt/webrtc-streamer
sudo cp ~/puppywood-docker/config.json /opt/webrtc-streamer/config.json
mkdir -p /opt/traefik
sudo touch /opt/traefik/acme.json && chmod 600 /opt/traefik/acme.json
sudo cp ~/puppywood-docker/traefik.toml /opt/traefik/traefik.toml
chmod +x ~/puppywood-docker/launch.sh
sudo ~/puppywood-docker/launch.sh
