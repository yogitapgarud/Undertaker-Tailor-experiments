#!/bin/sh

git clone https://i4gerrit.informatik.uni-erlangen.de/undertaker

sudo apt-get install flex bison libc6-dev libc6-dev-i386 linux-libc-dev linux-libc-dev:i386 libgmp3-dev libmpfr-dev libmpc-dev build-essential bc libboost1.55-dev libboost-filesystem1.55-dev libboost-regex1.55-dev libboost-thread1.55-dev libboost-wave1.55-dev libpuma-dev libpstreams-dev check python-unittest2 clang sparse pylint

#Do make and make install in undertaker directory

sudo apt-get source linux-image-`uname -r`

echo "deb http://ddebs.ubuntu.com $(lsb_release -cs) main restricted universe multiverse
deb http://ddebs.ubuntu.com $(lsb_release -cs)-updates main restricted universe multiverse
deb http://ddebs.ubuntu.com $(lsb_release -cs)-security main restricted universe multiverse
deb http://ddebs.ubuntu.com $(lsb_release -cs)-proposed main restricted universe multiverse" | \
sudo tee -a /etc/apt/sources.list.d/ddebs.list

sudo add-apt-repository ppa:webupd8team/y-ppa-manager

sudo apt-get update
sudo apt-get install y-ppa-manager

#change the line in following script to upstart for Ubuntu-14.04
#sudo vim /usr/local/bin/undertaker-tracecontrol-prepare-ubuntu

sudo apt-get install linux-image-`uname -r`-dbgsym
