#!/bin/bash

#############################################
#       ADVANCE BLACKLIST SEARCHER          #
#       powered by                          #
#       serebrum-root1x                     #
#############################################

#apt install toilet
#apt install boxes
#apt install lolcat

#figlet -f slant BBS SOC TEAM
toilet -f ivrit 'IP SEARCHER' | boxes -d cat -a hc -p h8 | lolcat
echo -e "\e[1;31mDurdurmak için CTRL+C'ye basınız :)\e[0m"


while :
do
        echo -ne "IP Giriniz : "

        read ip

        echo $ip

        cat /home/emre/ip-blacklist/*  | grep -l $ip /home/emre/ip-blacklist/*
done

