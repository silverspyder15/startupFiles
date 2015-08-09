#INSTALL='sudo apt-get install -y'
$INSTALL vim
#$INSTALL git-core
$INSTALL emacs
$INSTALL screen


echo "\n#Aliases" >> ~/.bashrc
echo "alias home='cd ~'" >> ~/.bashrc
echo "alias neutron='cd ~/workspaces/neutron'" >> ~/.bashrc

#mkdir startUpDir
#cd startUpDir
#git clone https://github.com/silverspyder15/emacsLibs
#cp .emacs ~/.
#cp -r emacs ~/.

#git clone https://github.com/silverspyder15/startupConfFiles
#cp devStack/local.conf ~/worksspaces/devstack/.

#cd ~
#git clone https://github.com/silverspyder15/emacsLibs

mkdir -p workspaces
# Clone code repositories
cd ~/workspaces

# Get devstack.
git clone https://git.openstack.org/openstack-dev/devstack

# Neutron
git clone git://git.openstack.org/openstack/neutron.git


# Setup devstack
mv ~/startupFiles/devStackFiles/local.conf ~/workspaces/devstack/.
pushd ~/workspaces/devstack
#./stack.sh
