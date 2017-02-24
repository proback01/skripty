#!/bin/bash

cas=`date +%T" "%D`
ip=`ifconfig | grep Všesměr | awk -F ":" '{print $2}' | awk -F " " '{print $1}'`
rx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $2}' | awk -F ")" '{print $1}'`
tx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $3}' | awk -F ")" '{print $1}'`
users=`who | wc -l `

echo "Aktuální čas: "$cas >> /home/student/Plocha/skripty/index.html
echo "Moje IP: "$ip >> /home/student/Plocha/skripty/index.html
echo "Přijatá data: "$rx >> /home/student/Plocha/skripty/index.html
echo "Odeslaná data: "$tx >> /home/student/Plocha/skripty/index.html
echo "Počet přihlášených uživatelů: "$users >> /home/student/Plocha/skripty/index.html
echo "<br><br>" >> /home/student/Plocha/skripty/index.html

