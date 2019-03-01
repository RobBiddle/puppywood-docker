docker stop $(docker ps -a -q)
docker stack rm $(docker ls -a -q)
docker rm $(docker ps -a -q)
docker network rm  $(docker network ls -a -q)
sleep 3
docker stop $(docker ps -a -q)
docker stack rm $(docker ls -a -q)
docker rm $(docker ps -a -q)
docker network rm  $(docker network ls -a -q)
sudo rm -rf ~/puppywood-docker
sleep 1
git clone https://github.com/RobBiddle/puppywood-docker.git
sleep 1
chmod +x ~/puppywood-docker/bootstrap.sh
chmod +x ~/puppywood-docker/launch.sh
sudo cp ~/puppywood-docker/config.json /opt/webrtc-streamer/config.json
sudo cp ~/puppywood-docker/config-beechmont.json /opt/webrtc-streamer/config-beechmont.json
sudo cp ~/puppywood-docker/config-montgomery.json /opt/webrtc-streamer/config-montgomery.json
sudo cp ~/puppywood-docker/index.html /opt/nginx/index.html
sudo cp ~/puppywood-docker/montgomery-cams.html /opt/nginx/montgomery-cams.html
sudo cp ~/puppywood-docker/beechmont-cams.html /opt/nginx/beechmont-cams.html
sleep 1
docker network create web --scope swarm --driver overlay
sleep 3
docker network create web --scope swarm --driver overlay
docker stack deploy -c ~/puppywood-docker/stack.yml cameras
