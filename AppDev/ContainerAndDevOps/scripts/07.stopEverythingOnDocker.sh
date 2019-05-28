docker stop web && docker rm web
docker stop api && docker rm api
docker stop mongo && docker rm mongo

docker rmi $(docker images -q -a)
docker network rm fabmedical
