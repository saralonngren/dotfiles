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

echo 🗝 Oh-my-zsh -------------------------
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo 🗝 GIT -------------------------------
sudo apt-get update
sudo apt-get install git

#Not sure if the following steps work - only on git.
read -p "Enter your github name : " name
git config --global user.name "$name"
read -p "Enter your github email : " email
git config --global user.email "$email"

echo 🗝 ASDF ------------------------------
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.4
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.zshrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.zshrc
source ~/.zshrc

echo 🗝 YARN ------------------------------
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn

echo 🗝 RUBY ------------------------------
sudo apt-get install -y build-essential
sudo apt-get install -y libssl-dev libreadline-dev
sudo apt-get install -y zlib1g-dev
asdf plugin-add ruby

echo You have been using ruby 2.6.3 on your projects - reminder
read -p "what ruby version do you want to install? : " rubyversion
asdf install ruby $rubyversion
asdf global ruby $rubyversion
gem install bundler -v '~> 1.0'

echo 🗝 ZEALDOC ---------------------------
sudo apt-get install zeal

echo 🗝 NODE ------------------------------
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

echo You have been using node 8.11.2 on your projects - reminder
read -p "what node version do you want to install? : " nodeversion
asdf install nodejs $nodeversion
asdf global nodejs $nodeversion

echo 🗝 REDIS -------------------------------
sudo apt install redis

echo 🗝 POSTGRES ----------------------------
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

echo 🗝 SPOTIFY --------------------------------
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

echo 🗝 SLACK ----------------------------------
sudo snap install slack --classic
sudo apt-get update
sudo apt-get upgrade slack-desktop

echo 🗝 GOOGLE CHROME --------------------------
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

echo 🗝 SKYPE ----------------------------------
wget https://go.skype.com/skypeforlinux-64.deb
sudo apt install ./skypeforlinux-64.deb
