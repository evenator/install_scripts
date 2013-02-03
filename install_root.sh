#! /bin/sh

#Install git
apt-get -y install git

#Get dotfiles
git clone git@github.com:evenator/dotfiles
cp -r dotfiles/* .

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
apt-get update
apt-get -y install zotero-standalone

#Get ROS repos
mkdir -p /home/ed/ros/dev_stacks
cd /home/ed/ros/dev_stacks
git clone git@github.com:evenator/cwru-ros-pkg.git
cd cwru-ros-pkg
git remote add central git@github.com:cwru-robotics/cwru-ros-pkg.git
cd ..
git clone git@github.com:evenator/precision_navigation
git clone git@github.com:evenator/swri-ros-pkg

#Get masters work
cd /home/ed
git clone git@github.com:evenator/masters

#Upgrade all the things
apt-get -y update
apt-get -y upgrade
apt-get -y autoremove
