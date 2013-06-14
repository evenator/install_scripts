#! /bin/sh

#Install git
apt-get -y install git

#Install ROS
sh -c 'echo "deb http://packages.ros.org/ros/ubuntu precise main" > /etc/apt/sources.list.d/ros-latest.list'
wget http://packages.ros.org/ros.key -O - | sudo apt-key add -
apt-get -y update
apt-get -y install ros-fuerte-desktop-full ros-fuerte-laser-drivers ros-fuerte-joystick-drivers ros-fuerte-camera-drivers ros-fuerte-audio-common ros-fuerte-arm-navigation ros-fuerte-arm-navigation-experimental python-setuptools python-pip ros-fuerte-octomap ros-fuerte-octomap-ros ros-fuerte-octomap-msgs ros-fuerte-object-manipulation
pip install -U rosinstall vcstools rosdep

#Install Correct Wireless Drivers (laptop)
apt-get purge broadcom-sta-common broadcom-sta-source bcmwl-kernel-source 
apt-get install b43-fwcutter firmware-b43-installer

#Install Pidgin
apt-get -y remove empathy
apt-get -y install pidgin

#Install gEDA
apt-get -y install geda
apt-get -y install pcb

#Install Chrome
apt-get -y install chromium-browser

#Install Doxygen
apt-get -y install doxygen

#install latex
apt-get -y install texlive

#Install git-svn
apt-get -y install git-svn

#Install vim
apt-get -y install vim

#Install Zotero
add-apt-repository ppa:smathot/cogscinl
apt-get -y update
apt-get -y install zotero-standalone

#Install grive
add-apt-resository ppa:nilarimogard/webupd8
apt-get -y update
apt-get -y install grive

#Upgrade all the things
apt-get -y update
apt-get -y upgrade
apt-get -y autoremove

#gedit YAML hilighter
cd /tmp && svn checkout http://masood.googlecode.com/svn/trunk/yaml-language-spec/
cd yaml-language-spec/
cp yaml.lang /usr/share/gtksourceview-3.0/language-specs/
chmod 644 /usr/share/gtksourceview-3.0/language-specs/yaml.lang
