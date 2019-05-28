# Install Brew
# sudo apt install linuxbrew-wrapper
# echo 'export PATH="/home/demouser/.linuxbrew/bin:$PATH"' >> ~/.bash_profile
# brew update
# brew install jq
echo "*************************************************"
echo "*** Update apt-get                            ***"
echo "*************************************************"

sudo apt-get update && sudo apt-get -y upgrade

echo "*************************************************"
echo "*** Installing jq for processing JSON on BASH ***"
echo "*************************************************"
sudo apt install jq

echo "******************************************************"
echo "*** Update npm                                     ***"
echo "******************************************************"
sudo npm install -g npm
sudo chown -R $USER:$(id -gn $USER) /home/demouser/.config
npm audit fix

echo "******************************************************"
echo "*** Installing bower for managing packages on web  ***"
echo "******************************************************"
sudo npm install -g bower

echo "*************************************************"
echo "*** Installing HELM                           ***"
echo "*************************************************"
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get | sudo bash
# curl https://raw.githubusercontent.com/helm/helm/master/scripts/get > get_helm.sh
# chmod 700 get_helm.sh
#./get_helm.sh

echo "*************************************************"
echo "*** Installing Azure Command Line Interface   ***"
echo "*************************************************"
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

echo "**************************************************************************"
echo "*** Adding user to docker group to avoid sudo on each docker execution ***"
echo "**************************************************************************"
sudo usermod -aG docker $USER



