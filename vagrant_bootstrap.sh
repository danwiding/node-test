#!/bin/sh
#http://wiki.cloudbees.com/bin/view/DEV/Node+Builds
sudo apt-get -y update
sudo apt-get install -y python-software-properties python g++ make libxml2-dev libxslt-dev unzip zsh git-core wget
sudo add-apt-repository -y ppa:fkrull/deadsnakes
sudo add-apt-repository -y ppa:chris-lea/node.js
sudo apt-get -y update
sudo apt-get install -y nodejs python2.7 python-pip python-dev
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
# the following doesn't work yet
sudo chsh -s `which zsh`
#password is password

cd /vagrant/angular/
sudo npm install -g bower grunt-cli
npm install
bower install --allow-root
grunt build