#!/bin/bash

cas=`date +%T" "%D`
ip=`ifconfig | grep Všesměr | awk -F ":" '{print $2}' | awk -F " " '{print $1}'`
rx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $2}' | awk -F ")" '{print $1}'`
tx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $3}' | awk -F ")" '{print $1}'`
un=`who | wc -l `
du=`df -h | grep sda | awk -F " " '{print $3}'`
da=`df -h | grep sda | awk -F " " '{printf $4}'`
um=`free -m | grep Mem: | awk -F " " '{print $3}'`
fm=`free -m | grep Mem: | awk -F " " '{print $4}'`
echo "Aktuální čas: "$cas >> dohled
echo "Moje IP: "$ip >> dohled
echo "Přijatá data: "$rx >> dohled
echo "Odeslaná data: "$tx >> dohled

echo "Počet přihlášených uživatelů: "$un >> dohled
echo "Využité místo na disku: "$du >> dohled
echo "Volné místo na disku: "$da >> dohled
echo "Využitá RAM: "$um" MB" >> dohled
echo "volná RAM: "$fm" MB" >> dohled
