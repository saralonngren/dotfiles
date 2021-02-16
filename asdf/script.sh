
echo 🗝 ASDF ------------------------------
# Check the latest version on https://asdf-vm.com/#/core-manage-asdf
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

echo 🗝 NODE ------------------------------
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

echo You have been using node 8.11.2 on your projects - reminder
read -p "what node version do you want to install? : " nodeversion
asdf install nodejs $nodeversion
asdf global nodejs $nodeversion
