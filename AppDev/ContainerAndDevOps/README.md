# Container and DevOps
 
## Task 1. Setup 

## Step 1.1 Go to [http://portal.azure.com](http://portal.azure.com) and log in with your Azure credentials

## Step 1.2 On Azure portal look for FabMedicalVM virtual machine and copy it public ip 

## Step 1.3 On PowerShell use SSH to connect you the jump box (FabMedicalVM)
```
ssh demouser@<<Public IP>>
```
## Step 1.4 Run the following command to get helper scripts
```
curl -o https://raw.githubusercontent.com/carlosalexei/partnerbootcamp/master/AppDev/ContainerAndDevOps/scripts/00.getScripts.sh | bash
```
