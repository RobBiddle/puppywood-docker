sudo rm -rf ~/puppywood-docker
git clone https://github.com/RobBiddle/puppywood-docker.git
chmod +x ~/puppywood-docker/bootstrap.sh
chmod +x ~/puppywood-docker/launch.sh
docker stack rm cameras
docker network rm web
docker network create web --scope swarm
docker stack deploy -c ~/puppywood-docker/stack.yml cameras
