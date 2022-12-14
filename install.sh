#!/bin/bash
function msg {
  BRAN='\033[1;37m' && RED='\e[31m' && GREEN='\e[32m' && YELLOW='\e[33m'
  BLUE='\e[34m' && MAGENTA='\e[35m' && MAG='\033[1;36m' && BLACK='\e[1m' && SEMCOR='\e[0m'
  case $1 in
  -ne) cor="${RED}${BLACK}" && echo -ne "${cor}${2}${SEMCOR}" ;;
  -ama) cor="${YELLOW}${BLACK}" && echo -e "${cor}${2}${SEMCOR}" ;;
  -verm) cor="${YELLOW}${BLACK}[!] ${RED}" && echo -e "${cor}${2}${SEMCOR}" ;;
  -azu) cor="${MAG}${BLACK}" && echo -e "${cor}${2}${SEMCOR}" ;;
  -verd) cor="${GREEN}${BLACK}" && echo -e "${cor}${2}${SEMCOR}" ;;
  -bra) cor="${RED}" && echo -ne "${cor}${2}${SEMCOR}" ;;
  -nazu) cor="${COLOR[6]}${BLACK}" && echo -ne "${cor}${2}${SEMCOR}" ;;
  -gri) cor="\e[5m\033[1;100m" && echo -ne "${cor}${2}${SEMCOR}" ;;
  esac
}
apt install curl -Y
apt install lolcat -y &>/dev/null
sudo apt-get install figlet
git clone https://github.com/playconect/Figlet-Fonts.git
apt install curl -y
apt install git -y &>/dev/null 
apt install figlet boxes -y &>/dev/null 
apt toilet -y &>/dev/null
clear
function fun_bar {
  comando="$1"
  _=$(
    $comando >/dev/null 2>&1
  ) &
  >/dev/null
  pid=$!
  while [[ -d /proc/$pid ]]; do
    echo -ne " \033[1;33m["
    for ((i = 0; i < 20; i++)); do
      echo -ne "\033[1;31m##"
      sleep 0.5
    done
    echo -ne "\033[1;33m]"
    sleep 1s
    echo
    tput cuu1
    tput dl1
  done
  echo -e " \033[1;33m[\033[1;31m########################################\033[1;33m] - \033[1;32m100%\033[0m"
  sleep 1s
}
function print_center {
  if [[ -z $2 ]]; then
    text="$1"
  else
    col="$1"
    text="$2"
  fi

  while read line; do
    unset space
    x=$(((54 - ${#line}) / 2))
    for ((i = 0; i < $x; i++)); do
      space+=' '
    done
    space+="$line"
    if [[ -z $2 ]]; then
      msg -azu "$space"
    else
      msg "$col" "$space"
    fi
  done <<<$(echo -e "$text")
}

function title {
  clear
  msg -bar
  if [[ -z $2 ]]; then
    print_center -azu "$1"
  else
    print_center "$1" "$2"
  fi
  msg -bar
}

function stop_install {
  [[ ! -e /bin/pweb ]]  && {
    title "INSTALA????O CANCELADA"
    clear
    exit;
 } || {
    title "INSTALA????O CANCELADA"
    clear
    exit;
}
}

function os_system {
  system=$(cat -n /etc/issue | grep 1 | cut -d ' ' -f6,7,8 | sed 's/1//' | sed 's/      //')
  distro=$(echo "$system" | awk '{print $1}')

  case $distro in
  Debian) vercion=$(echo $system | awk '{print $3}' | cut -d '.' -f1) ;;
  Ubuntu) vercion=$(echo $system | awk '{print $2}' | cut -d '.' -f1,2) ;;
  esac
}
function dependencias {
  soft="python bc screen sshpass at nano unzip lsof netstat net-tools dos2unix nload jq curl figlet python3 python-pip cron"
   for i in $soft; do
    leng="${#i}"
    puntos=$((21 - $leng))
    pts="."
    for ((a = 0; a < $puntos; a++)); do
      pts+="."
    done
    msg -nazu "    INSTALANDO $i$(msg -ama "$pts")"
    if apt install $i -y &>/dev/null; then
      msg -verd " INSTALADO"
    else
      msg -verm2 " ERRO"
      sleep 2
      tput cuu1 && tput dl1
      print_center -ama "APLICANDO FIX A $i"
      dpkg --configure -a &>/dev/null
      sleep 2
      tput cuu1 && tput dl1

      msg -nazu "    INSTALANDO $i$(msg -ama "$pts")"
      if apt install $i -y &>/dev/null; then
        msg -verd " INSTALADO"
      else
        msg -verm2 " ERRO"
      fi
    fi
  done
}
echo "America/Sao_Paulo" > /etc/timezone
ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime > /dev/null 2>&1
dpkg-reconfigure --frontend noninteractive tzdata > /dev/null 2>&1
clear
echo ""
echo -e "\033[1;37m $system                          $date"
echo -e "\E[44;1;37m    INSTALANDO BOT WHATSAPP    \E[0m"
echo ""
figlet -f "ANSI Shadow.flf" -d ./Figlet-Fonts/ "PLAY CONECT" | lolcat
echo ""
echo -e "\E[44;1;37m    OS MELHORES EST??O NA PLAY CONECT    \E[0m" 
echo ""
echo ""
chave=$(curl -sSL "https://raw.githubusercontent.com/playconect/bot-whats/main/chave") &>/dev/null

read -p "DIGITE A CHAVE DE INSTALA????O: " key
    
         if [[ "$key" = "$chave" ]]
          then
               echo -e "[*] VALIDANDO A CHAVE DE INSTALA????O"
                sleep 2
                echo $key > /bin/chave_inst
                echo -e "[*] CHAVE ACEITA"
                sleep 2
            else
            echo "[-] ESSA CHAVE N??O ?? V??LIDA!"
            sleep 3
            clear
            cat /dev/null > ~/.bash_history && history -c
            rm /bin/ubuinst* > /dev/null 2>&1
            exit;
          fi
clear
msg -bar
echo -e 'by: @play_conect' >/usr/lib/telegram
echo -e "\E[44;1;37m    INSTALADOR BOT WHATSAPP PLAY CONECT    \E[0m"
echo -e ""
echo -e "\033[1;37m????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????\033[0m"
echo -e "\033[1;37m???[ ! ] ESTA INSTALA????O FORNECE UM CONJUNTO DE FERRAMENTAS PARA\033[38;5;197m\033[38;5;197m\033[1;37m ???\E[0m"
echo -e "\033[1;37m???[ ! ] GEST??O E IMPLEMENTA????O DO BOT WHATSAPP PARA UBUNTU 18\033[38;5;197m\033[38;5;197m\033[1;37m   ???\E[0m"
echo -e "\033[1;37m???[ ! ] O USU??RIO ?? RESPONSAVEL A QUALQUER DANO/M?? UTILIZA????O.\033[38;5;197m\033[38;5;197m\033[1;37m  ???\E[0m"
echo -e "\033[1;37m????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????\033[0m"
  msg -ne "????????? VAMOS INICIAR? [S/N]: "
  read opcion
  [[ "$opcion" != @(s|S) ]] && stop_install
  clear && clear
  os_system
  msg -bar
apt update -y
apt upgrade -y
sudo apt install npm
sudo apt install build-essential
npm install express
npm install -g express
npm link express
sudo apt remove nodejs -Y
sudo apt purge nodejs -y
sudo apt autoremove -y
apt-get install ruby -y
apt install libwebp-dev -y
apt install ffmpeg -y
apt install wget
apt install tesseract-ocr
apt install graphicsmagick
apt install imagemagick
curl -fsSL https://deb.nodesource.com/setup_18.x 
sudo apt install npm -y
sudo bash nodesource_setup.sh
sudo apt install nodejs
node -v
sudo apt-get remove nodejs
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs
nvm install 16.15.1
clear
wget https://asempreendimentos.com/scripts-ssh/conexaozapssh.zip > /dev/null 2>&1
apt-get install unzip > /dev/null 2>&1
unzip conexaozapssh.zip > /dev/null 2>&1
cd conexaozapssh
apt-get install install.sh
sh start.sh
