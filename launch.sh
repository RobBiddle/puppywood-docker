rm -rf ~/puppywood-docker
git clone https://github.com/RobBiddle/puppywood-docker.git
chmod +x ~/puppywood-docker/launch.sh
docker stack deploy -c ~/puppywood-docker/stack.yml cameras
