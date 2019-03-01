docker stack rm cameras
sleep 3
docker network rm web
sleep 1
docker stack rm cameras
docker network rm web
sleep 3
docker network rm web
docker stack rm cameras
sleep 3
docker stack rm cameras
docker network rm web
sleep 3
sudo rm -rf ~/puppywood-docker
sleep 1
git clone https://github.com/RobBiddle/puppywood-docker.git
sleep 1
chmod +x ~/puppywood-docker/bootstrap.sh
chmod +x ~/puppywood-docker/launch.sh
sudo cp ~/puppywood-docker/config.json /opt/webrtc-streamer/config.json
sleep 1
docker network create web --scope swarm --driver overlay
sleep 3
docker stack deploy -c ~/puppywood-docker/stack.yml cameras
