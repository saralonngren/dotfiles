#!/usr/bin/env bash

echo -----------------------------------
echo Hello! Lets get started! 🔥
echo -----------------------------------

#A few programs need a pre setup to download and install.
echo -----------------------------------
echo A little help for some programs 🧐
echo -----------------------------------

sudo apt install curl

gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
sudo apt-add-repository -y ppa:rael-gc/rvm
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget https://go.skype.com/skypeforlinux-64.deb


#update dependencies
echo -----------------------------------
echo Lets update some dependencies 💾
echo -----------------------------------

sudo apt install build-essential git automake autoconf libreadline-dev libncurses-dev libssl-dev libyaml-dev libxslt-dev libffi-dev libtool unixodbc-dev unzip curl zlib1g-dev sqlite3 libsqlite3-dev
sudo apt-get update
sudo apt upgrade

#To code
echo -----------------------------------
echo Lets code 👾
echo -----------------------------------


sudo apt install zsh
chsh -s $(which zsh)
sudo apt install yarn
sudo apt-get install rvm
sudo apt-get install vim
sudo apt-get install git
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo -----------------------------------
echo I cant live without you ❤️
echo -----------------------------------

sudo apt-get install spotify-client
sudo snap install slack --classic
sudo apt install ./google-chrome-stable_current_amd64.deb
sudo apt install ./skypeforlinux-64.deb

echo -----------------------------------
echo Check if there is any updates 🤖
echo -----------------------------------

sudo apt-get update
sudo apt-get upgrade slack-desktop
