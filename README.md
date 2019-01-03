sudo apt-get install git
git clone https://github.com/horkhork/gce-pihole-ansible.git
sh bootstrap.sh 

# ------
sudo apt-get install curl && curl -sSL https://raw.githubusercontent.com/horkhork/gce-pihole-ansible/master/bootstrap.sh | bash

# ---- attempt via Apt
sudo echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list
sudo apt-get install dirmngr
