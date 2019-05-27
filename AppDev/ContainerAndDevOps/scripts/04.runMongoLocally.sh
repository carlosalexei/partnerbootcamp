echo "**********************************************"
echo "*** Create a docker network                ***"
echo "**********************************************"
docker network create fabmedical

echo "**********************************************"
echo "*** Run mongo on a docker container        ***"
echo "**********************************************"
docker run --name mongo --net fabmedical -p 27017:27017 -d mongo

echo "**********************************************"
echo "*** Run mongo on a docker container        ***"
echo "**********************************************"
docker container list

echo "**********************************************"
echo "*** Run mongo on a docker container        ***"
echo "**********************************************"
docker logs mongo