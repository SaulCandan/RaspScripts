#!/bin/bash

curl https://freemyip.com/update?token=08804b6d8ec9c53fb0f3f0b3&domain=duplexou.freemyip.com>/dev/null

toret="Ip Actualizada: ";
toret="$toret$(nslookup duplexou.freemyip.com | tail -2 | awk '{print $2;}')";
toret="$toret $(date)";

echo $toret >> /home/pi/Desktop/scripts/historialIp.txt;
