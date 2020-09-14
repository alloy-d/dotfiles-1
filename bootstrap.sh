#!/usr/bin/env bash

apt-get update

# install me packages -  the obscure ones are probably for asdf
apt-get install adns
apt-get install ansible
apt-get install autoconf
apt-get install automake
apt-get install aws-elasticbeanstalk
apt-get install awscli
apt-get install bash-completion
apt-get install circleci
apt-get install cmake
apt-get install cscope
apt-get install digdag
apt-get install direnv
apt-get install exercism
apt-get install fish
apt-get install freetype
apt-get install gdbm
apt-get install gettext
apt-get install gmp
apt-get install gnu-sed
apt-get install gnupg
apt-get install gnutls
apt-get install go
apt-get install grip
apt-get install heroku
apt-get install heroku-node
apt-get install htop
apt-get install hub
apt-get install icu4c
apt-get install imagemagick
apt-get install jemalloc
apt-get install jpeg
apt-get install jq
apt-get install leiningen
apt-get install libassuan
apt-get install libev
apt-get install libevent
apt-get install libffi
apt-get install libgcrypt
apt-get install libgpg-error
apt-get install libksba
apt-get install libnet
apt-get install libpng
apt-get install libssh
apt-get install libtasn1
apt-get install libtermkey
apt-get install libtiff
apt-get install libtool
apt-get install libunistring
apt-get install libusb
apt-get install libuv
apt-get install libvterm
apt-get install libxml2
apt-get install libxslt
apt-get install libyaml
apt-get install libzip
apt-get install lua
apt-get install mas
apt-get install msgpack
apt-get install nettle
apt-get install node
apt-get install npth
apt-get install oniguruma
apt-get install openssl
apt-get install openssl@1.1
apt-get install p11-kit
apt-get install parity
apt-get install pcre
apt-get install pcre2
apt-get install peco
apt-get install perform
apt-get install perl
apt-get install phantomjs
apt-get install pinentry
apt-get install pkg-config
apt-get install postgresql
apt-get install python
apt-get install qt@5.5
apt-get install readline
apt-get install reattach-to-user-namespace
apt-get install ripgrep
apt-get install ruby
apt-get install siege
apt-get install spark
apt-get install sqlite
apt-get install tcptraceroute
apt-get install telnet
apt-get install tldr
apt-get install tmate
apt-get install tmux
apt-get install tree
apt-get install truncate
apt-get install unibilium
apt-get install universal-ctags
apt-get install unixodbc
apt-get install vim
apt-get install watchman
apt-get install wxmac
apt-get install xz


#install asdf for package management
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0

mkdir -p $HOME/.config/fish/completions && cp $HOME/.asdf/completions/asdf.fish $HOME/config/fish/completions

# install ruby
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git

# install erlang
asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git

# install elixir
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git

# setup fonts
git clone git@github.com:powerline/fonts.git
./fonts/install.sh
rm -rf .fonts

# setup fish
echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
curl -L https://get.oh-my.fish | fish
omf install agnoster
omf theme agnoster

# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdirp ~/.vim/sessions

# copy rcm config
ln -s ~/.dotfiles/.rcrc ~/.rcrc
rcup

# setup ssh keys (You'll need to gen one...)
mkdir -p ~/.ssh
mv ./config/ssh/config ~/.ssh/config
ssh-keygen -t rsa -b 4096 -C "ian@codeguy.io"
ssh-add -K ~/.ssh/id_rsa
