BASE_DIR=~/FabMedical
cd $BASE_DIR/content-api
curl -O https://raw.githubusercontent.com/carlosalexei/partnerbootcamp/master/AppDev/ContainerAndDevOps/src/content-api/Dockerfile

docker build -t content-api .

cd $BASE_DIR/content-web
cd data-access
curl -O https://raw.githubusercontent.com/carlosalexei/partnerbootcamp/master/AppDev/ContainerAndDevOps/src/content-web/data-access/index.js
cd..

docker build -t content-web .

cd $BASE_DIR/content-init
docker build -t content-init .

# docker network create fabmedical
# docker run --name mongo --net fabmedical -p 27017:27017 -d mongo
# docker run --name api --net fabmedical -p 3001:3001 -e MONGODB_CONNECTION=mongodb://mongo:27017/contentdb -d content-api
# docker run --name web --net fabmedical -p 3000:3000 -d -e CONTENT_API_URL=http://api:3001 content-web