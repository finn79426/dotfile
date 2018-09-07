#!/bin/bash
# By : howpwn
# Email : finn79426@gmail.com

sudo dpkg  --add-architecture i386
sudo apt-fast update
sudo apt-fast -y install 	gdb \
							g++ \
							libc6-i386 \
							libffi-dev \
							libssl-dev \
							gcc-multilib \
							virtualenvwrapper \
							python-dev \
							build-essential \
							make \
							cmake \
							nasm \
							strace \
							ltrace \
							nmap

# pwntools (python 2.7)
sudo -H pip2 install --upgrade pip
sudo -H pip2 install --upgrade pwntools

# angr
sudo -H pip install angr --upgrade

# ropgadget
sudo -H pip install ropgadget

# floss
mkdir ~/.Tools/floss
wget https://s3.amazonaws.com/build-artifacts.floss.flare.fireeye.com/travis/linux/dist/floss -P ~/.Tools/floss
sudo chmod +x ~/.Tools/floss/floss

# radare2
git clone https://github.com/radare/radare2.git ~/.Tools/radare2/
sudo ~/.Tool/radare2/sys/install.sh

# XORtool
sudo -H pip2 install docopt
git clone https://github.com/hellman/xortool.git ~/.Tools/XORtool
sudo python ~/Tools/XORtool/setup.py install
rm -rf ~/.Tools/XORtool

# EzCryptSolver
git clone https://github.com/finn79426/EzCryptSolver.git ~/.Tools/EzCryptSolver
sudo -H pip2 install -r ~/.Tools/EzCryptSolve/requirements.txt

# PKcrack
wget https://www.unix-ag.uni-kl.de/~conrad/krypto/pkcrack/pkcrack-1.2.2.tar.gz -P ~/.Tools/
sudo tar xzf ~/.Tools/pkcrack-1.2.2.tar.gz ; mv ~/.Tools/pkcrack-1.2.2 ~/.Tools/PKcrack ; rm ~/.Tools/pkcrack-1.2.2.tar.gz
sudo make ~/.Tools/PKcrack/src
cd ~/.Tools/PKcrack/src &&  mv extract findkey makekey pkcrack zipdecrypt ../ && cd $(dirname "$0")

# HashPump

# gdb
git clone https://github.com/longld/peda.git --depth 1 ~/.Tools/peda
git clone https://github.com/scwuaptx/Pwngdb.git --depth 1 ~/.Tools/Pwngdb
cp gdbinit ~/.gdbinit
echo "https://github.com/longld/peda/blob/master/lib/config.py#L35"

