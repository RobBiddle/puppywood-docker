docker stack rm cameras
sleep 3
docker network rm web
sleep 1
docker stack rm cameras
sleep 3
docker network rm web
sudo rm -rf ~/puppywood-docker
sleep 1
git clone https://github.com/RobBiddle/puppywood-docker.git
sleep 1
chmod +x ~/puppywood-docker/bootstrap.sh
chmod +x ~/puppywood-docker/launch.sh
sleep 1
docker network create web --scope swarm --driver overlay
sleep 3
docker stack deploy -c ~/puppywood-docker/stack.yml cameras
