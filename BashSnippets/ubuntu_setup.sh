#!/usr/bin/env bash

# Run Command:
# GIT_USERNAME=XXXXXXXXXX GIT_EMAIL=XXXXXXXXXXXXX bash ubuntu_setup.sh

# Update Packages
sudo apt-get update
sudo apt-get upgrade

# Install Vim
sudo apt-get install vim

# Install Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
sudo apt-get install google-chrome-stable

# Install Atom
sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install atom

# Install Sublime
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer

# Install Shutter
sudo apt-get install shutter

# Install Redshift
sudo apt-get install redshift redshift-gtk

# Install Gimp
sudo apt-get autoremove gimp gimp-plugin-registry
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt-get update
sudo apt-get install gimp

# Install Github
sudo apt-get install git
git config --global user.name "${GIT_USERNAME}"
git config --global user.email "${GIT_EMAIL}"

# Install Python Tools and Pip
sudo apt-get install python-pip python-dev build-essential
sudo pip install --upgrade pip
sudo pip install --upgrade virtualenv

# Install Java
sudo add-apt-repository ppa:webupd8team/java
sudo apt update; sudo apt install oracle-java8-installer
sudo apt install oracle-java8-set-default

# Install Node and npm and nodemon
sudo apt install nodejs-legacy
sudo apt-get install npm
sudo npm install -g nodemon
sudo npm install -g n
sudo n latest

# Last Check for update upgrade... don't really need to but oh well
sudo apt-get update
sudo apt-get upgrade
