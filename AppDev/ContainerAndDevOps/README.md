# Container and DevOps
 
## Setup before the Hand-On Lab 



## Step 1 - Access the Azure Subscription
Go to [http://portal.azure.com](http://portal.azure.com) and log in with your Azure credentials

## Step 2 - Access to the Jump Box VM
On Azure portal look for FabMedicalVM virtual machine and copy it public ip 

## Step 1.3 On PowerShell use SSH to connect you the jump box (FabMedicalVM)
```
ssh demouser@<<Public IP>>
```
## Step 1.4 Run the following command to get helper scripts
```
curl -o https://raw.githubusercontent.com/carlosalexei/partnerbootcamp/master/AppDev/ContainerAndDevOps/scripts/00.getScripts.sh | bash
```



https://cloudworkshop.blob.core.windows.net/containers-devops/Hands-on%20lab/HOL%20step-by-step%20-%20Containers%20and%20DevOps%20-%20Developer%20edition.html