docker swarm init
docker network create web
docker stack deploy -c ~/puppywood-docker/stack.yml cameras


