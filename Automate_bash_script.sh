#!/bin/bash

echo "[+]------ Starting Subdomain Enumeration ------[+]"

#starting sublist3r
echo "[+] Starting Sublist3r [+]"
~/tools/Sublist3r/sublist3r.py -d $1 -v -o ~/scripts/target/domains.txt

#starting subfinder
echo "[+] Starting SubFinder [+]"
subfinder -d $1 -o ~/scripts/target/domains.txt

#running assetfinder
echo "[+] Starting Assetfinder [+]"
assetfinder --subs-only $1 | tee -a ~/scripts/target/domains.txt

#starting csrt.sh
echo "[+] Starting crt.sh [+]"
~/scripts/crt.sh $1 | tee -a ~/scripts/target/domains.txt

#running amass
echo "[+] Starting Amass Passive Mode [+]"
#- Passive mode
amass enum --passive -d $1 | tee -a ~/scripts/target/domains.txt

echo "[+] Starting Amass BruteForce Mode [+]"
#- Bruteforce Verbose mode
amass enum -brute -d $1 -v | tee -a ~/scripts/target/domains.txt

#removing duplicate entries
echo "[+] Removing Duplicates [+]"
sort -u ~/scripts/target/domains.txt -o ~/scripts/target/domains.txt

#checking for alive domains
echo "[+] Checking for alive domains.. [+]"
cat ~/scripts/target/domains.txt | httpx -follow-redirects -silent > ~/scripts/target/alive.txt

echo "[-] Done [-]"
