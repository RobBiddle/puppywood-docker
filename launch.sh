docker swarm init
docker network create web
docker stack deploy -c stack.yml cameras


