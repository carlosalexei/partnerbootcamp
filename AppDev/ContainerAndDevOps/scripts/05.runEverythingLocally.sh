
cd~
mkdir code
cd code
git clone https://PartnerBootCamp@dev.azure.com/PartnerBootCamp/FabrikamMedical/_git/content-api
git clone https://PartnerBootCamp@dev.azure.com/PartnerBootCamp/FabrikamMedical/_git/content-web
git clone https://PartnerBootCamp@dev.azure.com/PartnerBootCamp/FabrikamMedical/_git/content-init

mkdir ~/code/content-api/data

cp scripts/docker-compose.init.yml ~/code
cp scripts/docker-compose.yml ~/code

docker-compose -f docker-compose.yml -f docker-compose.init.yml -p fabmedical up -d