#!/bin/bash

sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y install --fix-missing
sudo apt-get -y autoremove
sudo apt-get -y autoclean
# apt-fast
sudo add-apt-repository -y ppa:apt-fast/stable
sudo apt-get -y install apt-fast
# Common tools
sudo apt-fast -y install git wget curl tmux
