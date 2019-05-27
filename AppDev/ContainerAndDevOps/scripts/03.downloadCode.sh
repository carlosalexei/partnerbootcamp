echo "**********************************************"
echo "*** Download code                          ***"
echo "**********************************************"
curl -L -o FabMedical.tgz http://bit.ly/2uhZseT

echo "**********************************************"
echo "*** Unpack code into FabMedical directory  ***"
echo "**********************************************"
mkdir FabMedical
tar -C FabMedical -xzf FabMedical.tgz --strip-components=1

echo "\n\n"
echo "**********************************************"
echo "*** Code Ready                             ***"
echo "**********************************************"
rm FabMedical.tgz
cd FabMedical
ls -l

echo "Code ready!!! . Create Azure DevOps projects and use git for versioning code "
echo "-----------------------------------------------------------------------------"
echo "\n\nSee Task 14, Step 6 on https://cloudworkshop.blob.core.windows.net/containers-devops/Hands-on%20lab/Before%20the%20HOL%20-%20Containers%20and%20DevOps.html"