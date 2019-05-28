BASE_DIR=~/FabMedical

cd $BASE_DIR
mkdir $BASE_DIR/data
curl -O https://raw.githubusercontent.com/carlosalexei/partnerbootcamp/master/AppDev/ContainerAndDevOps/src/docker-compose.init.yml
curl -O https://raw.githubusercontent.com/carlosalexei/partnerbootcamp/master/AppDev/ContainerAndDevOps/src/docker-compose.yml

docker-compose -f docker-compose.yml -f docker-compose.init.yml -p fabmedical up -d
