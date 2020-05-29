docker stack rm cameras
sleep 3
sudo rm -rf ~/puppywood-docker
docker image prune -f
sleep 1
git clone https://github.com/RobBiddle/puppywood-docker.git -q
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
docker stack deploy -c ~/puppywood-docker/stack.yml cameras
