#!/bin/bash
ip=`ifconfig | grep Všesměr | awk -F ":" '{print $2}' | awk -F " " '{print $1}'`
rx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $2}' | awk -F ")" '{print $1}'`
tx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $3}' | awk -F ")" '{print $1}'`
disk=`df -h | grep /dev/sda1 | awk -F " " '{print $4}'`
users=`who | wc -l`
cas=`date +"%d.%m.%Y - %H:%M:%S"`
echo '<div style="border-bottom: 1px blue;"><h1 style="color: blue; text-align: left;">Moje IP: '$ip'</h1>' >> /home/student/Plocha/skripty/status
echo "<p>Přijato: "$rx"</p>" >> /home/student/Plocha/skripty/status
echo "<p> Odeslaná data: "$tx"</p>" >> /home/student/Plocha/skripty/status
echo "<p>Volné místo na disku: "$disk"B</p>" >> /home/student/Plocha/skripty/status
echo "<p>Počet přihlášených uživatelů: "$users "uživatelů</p>" >> /home/student/Plocha/skripty/status
echo "<code>Datum: "$cas"</code>" >> /home/student/Plocha/skripty/status
echo '<br><br></div>' >> /home/student/Plocha/skripty/status
vloz=`cat /home/student/Plocha/skripty/status`
echo '<html lang="cs"><head>' > /var/www/index.html
echo '<meta charset="utf-8">' >> /var/www/index.html
echo '<title>Status</title></head><body>' >> /var/www/index.html
echo '<div style="font-family: arial, sans-serif; padding: 5px; max-width: 750px; margin: auto; text-align: center; border: 2px solid blue; border-radius: 10px; color: black; background: white">' >> /var/www/index.html
echo $vloz >> /var/www/index.html
echo '</div></body></html>' >> /var/www/index.html



