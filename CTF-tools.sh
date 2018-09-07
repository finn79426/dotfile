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

echo -n "Do you want to keep install large tools ?"
read YN
if echo "$YN" | grep -iq "y" ;then
	:
else
	exit 0
fi

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
git clone https://github.com/bwall/HashPump.git ~/.Tools/Hashpump
sudo make ~/.Tools/Hashpump
sudo make install ~/.Tools/Hashpump
rm -rf ~/.Tools/Hashpump

# libnum
git clone https://github.com/hellman/libnum ~/.Tools/libnum
python ~/.Tool/libnum/setup.py install
rm -rf ~/.Tools/libnum

# factordb-pycli
sudo -H pip2 install factordb-pycli

# EasyWebSolver
sudo gem install colorize
git clone https://github.com/w181496/EasySolver.git ~/.Tools/EasyWebSolver

# SQLmap
sudo apt-get install -y sqlmap

# tplmap
sudo -H pip2 install pyyaml
git clone https://github.com/epinna/tplmap.git ~/.Tools/tplmap

# commix
git clone https://github.com/commixproject/commix.git ~/.Tools/commix

# GitHacker
sudo -H pip2 install requests
git clone https://github.com/wangyihang/GitHacker.git ~/.Tools/GitHacker

# foremost
sudo apt-get install -y foremost

# binwalk
sudo apt-get install -y binwalk

# ngrok
echo "Ngrok 需要手動下載 Binary"
mkdir ~/Tools/ngrok

# gdb
git clone https://github.com/longld/peda.git --depth 1 ~/.Tools/peda
git clone https://github.com/scwuaptx/Pwngdb.git --depth 1 ~/.Tools/Pwngdb
cp gdbinit ~/.gdbinit
echo "https://github.com/longld/peda/blob/master/lib/config.py#L35"

