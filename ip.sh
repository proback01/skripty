#!/bin/bash
ip=`ifconfig | grep "inet adr" | awk -F ":" '{print $2}' | awk -F " " '{print $1}'`
echo "Moje IP: "$ip

