#!/bin/bash

NC='\033[0;37m' 
PURPLE='\033[0;34m' 
GREEN='\033[0;32m' 
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }

# // Export Align
export BOLD="\e[1m"
export WARNING="${red}\e[5m"
export UNDERLINE="\e[4m"
clear
clear
clear
clear
IP=$(curl -sS ipv4.icanhazip.com 2>/dev/null)
domen=$(cat /etc/xray/domain 2>/dev/null)
NS=$(cat /root/nsdomain 2>/dev/null); [[ -z "$NS" ]] && NS=$(cat /etc/xray/dns 2>/dev/null)
PUB=$(cat /etc/slowdns/server.pub 2>/dev/null)
clear
clear
clear
clear
Login=trial`</dev/urandom tr -dc X-Z0-9 | head -c4`
echo -e "\033[0;34m________________\033[0m"
echo -e "Settings Triall   "
echo -e "\033[0;34m________________\033[0m"
echo -e ""
echo -e ""
echo -e "\033[0;34m________________\033[0m"
read -p " Menit : " pup
echo -e "\033[0;34m________________\033[0m"
hari="1"
Pass=1
clear
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
PID=`ps -ef |grep -v grep | grep sshws |awk '{print $2}'`
clear

echo userdel -f "$Login" | at now + $pup minutes
echo "tunnel ssh ${Login}" | at now +$pup minutes &> /dev/null
clear
echo -e "${PURPLE}<<<< SSH ACCOUNTS >>>> ${NC}"
echo -e "${PURPLE}${NC}"
echo -e "Username    : $Login" 
echo -e "Password    : $Pass"
echo -e "Expired On  : $pup menit" 
echo -e "${PURPLE}════════════════════════════════════${NC}"
#echo -e "IP         : $IP" 
#echo -e "Host        : $domen" 
echo -e "NS DOMAIN   : $NS"
echo -e "PUB KEY     : $PUB" 
echo -e "DOMAIN HOST : ify22.aryablitar.com" 
echo -e "PORT DNS    : 53"
echo -e " "
echo -e "\033[0;32mSc By Arya Blitar${NC}" 
echo ""
read -n 1 -s -r -p "   Press any key to back on menu"
menu
