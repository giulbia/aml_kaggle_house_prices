#!/usr/bin/env bash

echo ">>> Starting Install Script"

# Update
sudo apt-get update

echo ">>> Installing Items"

### Miniconda
# wget http://repo.continuum.io/miniconda/Miniconda2-4.3.27.1-Linux-x86_64.sh -O ~/miniconda.sh
### Python 3 version : Miniconda3-4.3.27.1-Linux-x86_64.sh
# bash ~/miniconda.sh -b -p /opt/miniconda
# export PATH="/opt/miniconda/bin:$PATH"

# echo 'export PATH="/opt/miniconda/bin:$PATH"' >> /home/vagrant/.bashrc
# echo 'source /opt/miniconda/bin/activate' >> /home/vagrant/.bashrc

### Anaconda
### Anaconda2-5.0.0.1-Linux-x86_64.sh
### Anaconda3-5.0.0.1-Linux-x86_64.sh
wget https://repo.continuum.io/archive/Anaconda3-5.0.0.1-Linux-x86_64.sh -O ~/anaconda.sh
bash ~/anaconda.sh -b -p /opt/anaconda
export PATH="/opt/anaconda/bin:$PATH"

echo 'export PATH="/opt/anaconda/bin:$PATH"' >> /home/vagrant/.bashrc
echo 'source /opt/anaconda/bin/activate' >> /home/vagrant/.bashrc


# according to https://www.drupal.org/node/2469213 as I have a dpkg-reconfigure error
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
locale-gen en_US.UTF-8
dpkg-reconfigure locales

echo ">>> Install  Jupyter"
conda install jupyter

sleep 10

echo ">>> Install python-dev"
sudo apt-get install -y python-dev

sleep 10

echo ">>> Install gcc"
sudo apt-get install -y build-essential

sleep 10

#echo ">>> Install setuptools"
#sudo apt-get install -y setuptools

#sleep 10

echo ">>> Install pip"
sudo apt-get install -y python-pip

sleep 10

echo ">>> Update pip and setuptools"
sudo pip install -U pip setuptools

sleep 10

echo ">>> Install cmake"
sudo pip install cmake

sleep 10

echo ">>> update six"
sudo pip install --upgrade six

#sleep 10

echo ">>> Install mlbox"
sudo pip install mlbox
