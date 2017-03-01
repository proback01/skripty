#!/bin/bash
ip=`ifconfig | grep Všesměr | awk -F ":" '{print $2}' | awk -F " " '{print $1}'`
rx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $2}' | awk -F ")" '{print $1}'`
tx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $3}' | awk -F ")" '{print $1}'`
disk=`df -h | grep /dev/sda1 | awk -F " " '{print $4}'`
users=`who | wc -l`
cas=`date +"%d.%m.%Y - %H:%M:%S"`

echo '<div style="border-bottom: 1px blue;"><h1 style="color: blue; text-align: left;">Moje IP: '$ip'</h1>' >> /home/viktor/Desktop/skripty/index.html
echo "<p>Přijato: "$rx"</p>" >> /home/viktor/Desktop/skripty/index.html
echo "<p> Odeslaná data: "$tx"</p>" >> /home/viktor/Desktop/skripty/index.html
echo "<p>Volné místo na disku: "$disk"B</p>" >> /home/viktor/Desktop/skripty/index.html
echo "<p>Počet přihlášených uživatelů: "$users "uživatelů</p>" >> /home/viktor/Desktop/skripty/index.html
echo "<code>Datum: "$cas"</code>" >> /home/viktor/Desktop/skripty/index.html
echo '<br><br></div>' >> /home/viktor/Desktop/skripty/index.html
vloz=`cat /home/viktor/Desktop/skripty/index.html
echo '<html lang="cs"><head>' > /var/www/index.html
echo '<meta charset="utf-8">' >> /var/www/index.html
echo '<title>Status</title></head><body>' >> /var/www/index.html
echo '<div style="font-family: arial, sans-serif; padding: 5px; max-width: 750px; margin: auto; text-align: center; border: 2px solid blue; border-radius: 10px; color: black; background: white">' >> /var/www/index.html
echo $vloz >> /var/www/index.html
echo '</div></body></html>' >> /var/www/index.htmlvlozecho



