mkdir scripts
cd scripts
curl -O https://raw.githubusercontent.com/carlosalexei/partnerbootcamp/master/AppDev/ContainerAndDevOps/scripts/01.setupVM.sh
curl -O https://raw.githubusercontent.com/carlosalexei/partnerbootcamp/master/AppDev/ContainerAndDevOps/scripts/02.createAzureResources.sh
curl -O https://raw.githubusercontent.com/carlosalexei/partnerbootcamp/master/AppDev/ContainerAndDevOps/scripts/03.downloadCode.sh
curl -O https://raw.githubusercontent.com/carlosalexei/partnerbootcamp/master/AppDev/ContainerAndDevOps/scripts/04.runMongoLocally.sh
curl -O https://raw.githubusercontent.com/carlosalexei/partnerbootcamp/master/AppDev/ContainerAndDevOps/scripts/05.runEverythingLocally.sh
chmod 700 01.setupVM.sh
chmod 700 02.createAzureResources.sh
chmod 700 03.downloadCode.sh
chmod 700 04.runMongoLocally.sh
chmod 700 05.runEverythingLocally.sh