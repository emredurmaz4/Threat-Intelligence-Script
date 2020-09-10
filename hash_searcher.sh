#!/bin/bash

#################################################
#       ADVANCE BLACKLIST SEARCHER-2            #
#       powered by                              #
#                  serebrum-root1x              #
#################################################

toilet -f ivrit 'HASHSEARCHER' | boxes -d cat -a hc -p h8 | lolcat
echo -e "\e[1;31mDurdurmak için CRTL+C'ye basınız :)\e[0m"


while :
do
        echo -ne "Hash Giriniz : "

        read hash

        echo $hash

        cat /home/emre/hash-blacklist/* | grep -l $hash /home/emre/hash-blacklist/*
done
