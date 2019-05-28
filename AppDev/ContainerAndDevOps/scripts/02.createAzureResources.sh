SUFIX=$RANDOM
LOCATION=australiaeast
NAME=FabrikamMedical
RESOURCE_GROUP_NAME=$NAME"_RG"
ACR_NAME="${NAME,,}"$SUFIX
AKS_NAME=$NAME$SUFIX

echo "**********************************************"
echo "Location: " $LOCATION
echo "Grooup  : " $RESOURCE_GROUP_NAME
echo "ACR     : " $ACR_NAME
echo "AKS     : " $AKS_NAME
echo "**********************************************"

echo "**********************************************"
echo "*** Creating a Resource Group              ***"
echo "**********************************************"
az group create -n $RESOURCE_GROUP_NAME -l $LOCATION

echo "**********************************************"
echo "*** Creating an Azure Container Registry   ***"
echo "**********************************************"
az acr create -n $ACR_NAME -g $RESOURCE_GROUP_NAME --sku Basic --admin-enabled true

echo "**********************************************"
echo "*** Creating a Service Princial            ***"
echo "**********************************************"
ID_STR=$(az account show --query id)
ID="${ID_STR%\"}"
ID="${ID#\"}"
echo $ID
SP_JSON=$(az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/$ID" --name="http://Fabmedical-sp-$SUFIX")
echo $SP_JSON
echo "--------------"
APP_ID=($(echo $SP_JSON | jq -r '.appId'))
PASSWORD=($(echo $SP_JSON | jq -r '.password'))

echo "=============================================="
echo "APP_ID  : " $APP_ID
echo "PASSWORD: " $PASSWORD
echo "==============================================\n\n"

echo "**********************************************"
echo "*** Creating an Azure Kubernetes Services  ***"
echo "**********************************************"
az aks create -n $AKS_NAME -g $RESOURCE_GROUP_NAME --node-count 2 --node-vm-size Standard_D2s_v3 --generate-ssh-keys --service-principal $APP_ID --client-secret $PASSWORD

echo "**********************************************"
echo "*** Installing kubectl                     ***"
echo "**********************************************"
sudo az aks install-cli

echo "**********************************************"
echo "*** Getting AKS credentials                ***"
echo "**********************************************"
az aks get-credentials -n $AKS_NAME -g $RESOURCE_GROUP_NAME
