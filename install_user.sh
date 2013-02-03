#Get ROS repos
mkdir -p ~/ros/dev_stacks
cd ~/ros/dev_stacks
git clone git@github.com:evenator/cwru-ros-pkg.git
cd cwru-ros-pkg
git remote add central git@github.com:cwru-robotics/cwru-ros-pkg.git
cd ..
git clone git@github.com:evenator/precision_navigation
git clone git@github.com:evenator/swri-ros-pkg

#Get masters work
cd ~
git clone git@github.com:evenator/masters


#Get dotfiles
cd ~
git clone git@github.com:evenator/dotfiles
ln -s dotfiles/* .
