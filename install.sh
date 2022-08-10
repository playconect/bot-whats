#!/bin/bash
echo "America/Sao_Paulo" > /etc/timezone
ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime > /dev/null 2>&1
dpkg-reconfigure --frontend noninteractive tzdata > /dev/null 2>&1
clear
echo -e 'by: @play_conect' >/usr/lib/telegram
echo -e "\e[1;97m           \e[5m\033[1;100m   INSTALADOR BOT WHATSAPP PLAY CONECT    \033[1;37m"
echo -e "\033[1;37m┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓\033[0m"
echo -e "\033[1;37m┃[ ! ] ESTA INSTALAÇÃO FORNECE UM CONJUNTO DE FERRAMENTAS PARA\033[38;5;197m\033[38;5;197m\033[1;37m ┃\E[0m"
echo -e "\033[1;37m┃GESTÃO E IMPLEMENTAÇÃO DO BOT WHATSAPP PARA UBUNTU 18\033[38;5;197m\033[38;5;197m\033[1;37m ┃\E[0m"
echo -e "\033[1;37m┃[ ! ] O USUÁRIO É RESPONSAVEL A QUALQUER DANO/MÁ UTILIZAÇÃO.\033[38;5;197m\033[38;5;197m\033[1;37m  ┃\E[0m"
echo -e "\033[1;37m┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛\033[0m"
  msg -ne "┗━┫ VAMOS INICIAR? [S/N]: "
  read opcion
  [[ "$opcion" != @(s|S) ]] && stop_install
  clear && clear
apt-get upgrade -y 
apt-get update -y 
apt-get install nodejs -y
apt-get install nodejs-lts -y
apt-get install git -y
apt-get install ffmpeg -y
node -v
apt-get install npm -y
cd ~
curl -sL https://deb.nodesource.com/setup_17.x -o /tmp/nodesource_setup.sh
sudo bash /tmp/nodesource_setup.sh
node -v
npm -v
apt-get install build-essential -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.bashrc
nvm ls-remote
nvm install v16.13.1 -y
nvm use v16.13.1
node -v
nvm ls
nvm alias default 16.13.1
nvm use default
npm install express -y
npm install -g express -y
~/.nvm/versions/node/16.13.1/lib/node_modules/express
npm link express
nvm help
apt-get install ruby -y
apt-get install lolcat -y
apt-get install libwebp-dev -y
apt-get install ffmpeg -y
apt-get install wget
apt-get install tesseract-ocr -y
apt-get install graphicsmagick -y
apt-get install imagemagick -y
apt-get install curl -y
cd ~
curl -sL https://deb.nodesource.com/setup_17.x -o nodesource_setup.sh
curl -sL https://deb.nodesource.com/setup_18.x | sudo bash -
cd ~
curl -sL https://deb.nodesource.com/setup_18.x | sudo bash -
sudo bash nodesource_setup.sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh
apt-get install nvm
nvm list-remote
nvm install v16.14.0
nvm install lts/fermium
sudo bash nodesource_setup.sh  
wget https://raw.githubusercontent.com/playconect/bot-whats/main/conexaozapssh.zip > /dev/null 2>&1
apt-get install unzip > /dev/null 2>&1
unzip internet4g.zip > /dev/null 2>&1
cd conexaozapssh
apt-get install install.sh
sh start.sh
