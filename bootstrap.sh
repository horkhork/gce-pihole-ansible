#!/bin/bash

set -e

sudo apt update
sudo apt install git make python-setuptools gcc python-dev libffi-dev libssl-dev python-packaging
#sudo apt install git make python-setuptools gcc python-dev libffi-dev libssl-dev python-packaging

git clone git://github.com/ansible/ansible.git
cd ansible
git checkout stable-2.6
make
sudo make install

ansible --version
