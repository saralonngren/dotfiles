#!/usr/bin/env bash

echo -----------------------------------
echo Hello! Lets get started! 🔥
echo -----------------------------------

#update dependencies
echo -----------------------------------
echo Lets update some dependencies 💾
echo -----------------------------------

sudo apt-get update
sudo apt upgrade

echo -----------------------------------
echo Lets code 👾
echo -----------------------------------

echo 🗝 CURL ------------------------------
sudo apt install curl

echo 🗝 ZSH -------------------------------
sudo apt install zsh
chsh -s $(which zsh)
#Need to close and reopen terminal.

echo 🗝 GIT -------------------------------
sudo apt-get update
sudo apt-get install git

#Not sure if the following steps work - only on git.
read -p "Enter your github name : " name
git config --global user.name "$name"
read -p "Enter your github email : " email
git config --global user.email "$email"

echo 🗝 Oh-my-zsh -------------------------
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo 🗝 YARN ------------------------------
sudo apt-get update && sudo apt-get install yarn

echo 🗝 RUBY ------------------------------
sudo apt-get install -y build-essential
sudo apt-get install -y libssl-dev libreadline-dev
sudo apt-get install -y zlib1g-dev

git clone https://github.com/rbenv/rbenv.git ~/.rbenv

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
source ~/.zshrc 

#Check if rbenv is installed
type rbenv

#Simplify ruby instalation
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

#Download yout ruby version
echo You have been using ruby 2.6.3 on your projects - reminder
read -p "what ruby version do you want to install? : " rubyversion
rbenv install $rubyversion

#Set your global version
rbenv global $rubyversion

echo 🗝 BUNDLER ---------------------------
gem install bundler

echo 🗝 RAILS -----------------------------
gem install rails -v 6.1.2.1

echo 🗝 ZEALDOC ---------------------------
sudo apt-get install zeal

echo 🗝 NODE ------------------------------

echo 🗝 REDIS ----------------------------
sudo apt install redis

echo 🗝 POSTGRES -------------------------
sudo apt-get install mysql-server mysql-client libmysqlclient-dev
sudo apt-get install postgresql postgresql-contrib libpq-dev

read -p "what postgre name do you want to use? : " usernamesql
sudo -u postgres createuser $usernamesql -s

#To add password to your user, you have to execute the following lines.
# sudo -u postgres psql
# postgres=# ALTER USER username PASSWORD 'your_password';

echo 🗝 POSTMAN ----------------------------
sudo snap install postman

echo -----------------------------------
echo I cant live without you ❤️
echo -----------------------------------

echo 🗝 SLACK ----------------------------------
sudo snap install slack --classic
sudo apt-get update
sudo apt-get upgrade slack-desktop
