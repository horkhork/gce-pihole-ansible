#!/bin/bash

set -e

git clone https://github.com/horkhork/gce-pihole-ansible.git

sudo apt update
sudo apt install git make python-setuptools gcc python-dev libffi-dev libssl-dev python-packaging

git clone git://github.com/ansible/ansible.git
pushd .
cd ansible
git checkout stable-2.6
make
sudo make install
popd
ansible --version
ansible-playbook gce-pihole-ansible/playbook.yaml
