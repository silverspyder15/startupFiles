sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade

INSTALL='sudo apt-get install -y'
$INSTALL vim
#$INSTALL git-core
$INSTALL emacs
$INSTALL screen


echo "#Aliases" >> ~/.bashrc
echo "alias home='cd ~'" >> ~/.bashrc
echo "alias neutronWs='cd ~/workspaces/neutron'" >> ~/.bashrc
echo "alias devstackWs='cd ~/workspaces/neutron'" >> ~/.bashrc


#mkdir startUpDir
#cd startUpDir
#git clone https://github.com/silverspyder15/emacsLibs
cp emacsLibs/.emacs ~/.
cp -r emacsLibs/emacs ~/.

#git clone https://github.com/silverspyder15/startupConfFiles
#cp devStack/local.conf ~/worksspaces/devstack/.

#cd ~
#git clone https://github.com/silverspyder15/emacsLibs

mkdir -p ~/workspaces
# Clone code repositories
cd ~/workspaces

# Get devstack.
git clone https://git.openstack.org/openstack-dev/devstack

# Neutron
git clone git://git.openstack.org/openstack/neutron.git


# Setup devstack
cp ~/startupFiles/devStackFiles/local.conf ~/workspaces/devstack/.
pushd ~/workspaces/devstack
#./stack.sh
