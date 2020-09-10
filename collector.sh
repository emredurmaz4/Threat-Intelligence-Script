#!/bin/bash

###############################
# Cr34t3d by                  #
#               root1x        #
#               Serebrum      #
#                             #
###############################


# talos ip blacklist 30 minutes *

wget -q "https://www.talosintelligence.com/documents/ip-blacklist" -O /home/emre/ip-blacklist/talos.txt

# usom ip blacklist

curl -s https://blacklist.tnetworks.com.tr/usom-ip-list.txt | grep -v "#" > /home/emre/ip-blacklist/usom-ipblacklist.txt

# badips.com 430k ioc

curl -s https://lists.blocklist.de/lists/all.txt > /home/emre/ip-blacklist/block-list-de.txt
split -l 15000 -d --additional-suffix=.txt /home/emre/ip-blacklist/block-list-de.txt /home/emre/ip-blacklist/block-list-de_
rm -r /home/emre/ip-blacklist/block-list-de.txt

# dan.me.uk tor list

curl -s https://dan.me.uk/torlist/ > /home/emre/ip-blacklist/dan-me-tor-list.txt

#abuse.ch SSLBL botnet C2 ip blacklist

curl -s https://sslbl.abuse.ch/blacklist/sslipblacklist.csv | awk '{print $2}' | cut -d "," -f 2 | head -n-1 | tail -n+10 > /home/emre/ip-blacklist/botnet-c2.txt

# high confidence IPv4 Droplist

curl -s https://threatintel.stdominics.sa.edu.au/droplist_high_confidence.txt | grep -v "#" > /home/emre/ip-blacklist/ipv4-droplist.txt

# greensnow blacklist
curl -s http://blocklist.greensnow.co/greensnow.txt > /home/emre/ip-blacklist/greensnow.txt

# dark list raw ips

curl -s http://www.darklist.de/raw.php | grep -v "#" | sort -u | uniq > /home/emre/ip-blacklist/darklist-raw.txt

#  emerging compromised-ip

curl -s https://rules.emergingthreats.net/blockrules/compromised-ips.txt > /home/emre/ip-blacklist/emerging-compromised.txt

# cinsscore badguys

curl -s https://cinsscore.com/list/ci-badguys.txt > /home/emre/ip-blacklist/badguys.txt

# danger.rulez.sk bruteforce blockler ip list

curl -s http://danger.rulez.sk/projects/bruteforceblocker/blist.php | awk '{print $1}' | grep -v "#" > /home/emre/ip-blacklist/brute-force-block.txt

# charles ssh dict attaack ip list

curl -s http://charles.the-haleys.org/ssh_dico_attack_hdeny_format.php/hostsdeny.txt | grep -v "#" | awk '{print $3}' > /home/emre/ip-blacklist/ssh-dict.txt
split -l 15000 -d --additional-suffix=.txt  /home/emre/ip-blacklist/ssh-dict.txt  /home/emre/ip-blacklist/ssh-dict_
rm -r /home/emre/ip-blacklist/ssh-dict.txt

# abuse ch ipblock list general

curl -s https://feodotracker.abuse.ch/downloads/ipblocklist.csv | grep -v "#" | awk '{print $2}' | cut -d "," -f 2  > /home/emre/ip-blacklist/abuse-ch.txt

# emerging threats

curl -s http://rules.emergingthreats.net/fwrules/emerging-Block-IPs.txt | grep -v "#"  | sort -u | uniq > /home/emre/ip-blacklist/emerging.txt

# tor bulk exit list

curl -s "https://check.torproject.org/cgi-bin/torbulkexitlist?ip=1.1.1.1" > /home/emre/ip-blacklist/tor.txt

# c2 ipmasterlist

curl -s http://osint.bambenekconsulting.com/feeds/c2-ipmasterlist.txt  | grep -v "#" |cut -d "," -f 1 > /home/emre/ip-blacklist/c2-ipmasterlist.txt

#  c2 dommasterlist

curl -s  http://osint.bambenekconsulting.com/feeds/c2-dommasterlist.txt | grep -v "#" | cut -d "," -f 1 > /home/emre/ip-blacklist/c2-dommasterlist.txt


# zerodot coinblocker

curl -s https://zerodot1.gitlab.io/CoinBlockerLists/list.txt > /home/emre/ip-blacklist/coin-list.txt
split -l 15000 -d --additional-suffix=.txt /home/emre/ip-blacklist/coin-list.txt /home/emre/ip-blacklist/coin-list_
rm -r /home/emre/ip-blacklist/coin-list.txt

# ipspamlist csv

curl -s http://www.ipspamlist.com/public_feeds.csv  | grep -v "#" | awk '{print $3}' | cut -d "," -f 2 > /home/emre/ip-blacklist/ipspamlist.txt

# hostlist github

curl -s https://raw.githubusercontent.com/Hestat/minerchk/master/hostslist.txt > /home/emre/ip-blacklist/hostlist-github.txt

# hosts github

curl -s https://raw.githubusercontent.com/hoshsadiq/adblock-nocoin-list/master/hosts.txt | awk '{print $2}' > /home/emre/ip-blacklist/hosts-github.txt

# openphish

curl -s https://openphish.com/feed.txt > /home/emre/ip-blacklist/openphish.txt

#suspicios domain

curl -s https://secure.dshield.org/feeds/suspiciousdomains_High.txt | grep -v '#' >/home/emre/ip-blacklist/suspicious.txt

# alienvault ip reputation

curl -s http://reputation.alienvault.com/reputation.data | cut -d "#" -f 1 > /home/emre/ip-blacklist/alienvault.txt
split -l 15000 -d --additional-suffix=.txt /home/emre/ip-blacklist/alienvault.txt /home/emre/ip-blacklist/alienvault_
rm -r /home/emre/ip-blacklist/alienvault.txt

curl -s https://virusshare.com/hashfiles/unpacked_hashes.md5 | awk '{print $1}' > /home/emre/hash-blacklist/original_md5.txt
curl -s https://virusshare.com/hashfiles/unpacked_hashes.md5 | awk '{print $2}' > /home/emre/hash-blacklist/unpacked_m5.txt

