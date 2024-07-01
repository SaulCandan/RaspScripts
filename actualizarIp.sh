#!/bin/bash

curl https://freemyip.com/update?token=<_token_>&domain=duplexou.freemyip.com>/dev/null

toret="Ip Actualizada: ";
toret="$toret$(nslookup duplexou.freemyip.com | tail -2 | awk '{print $2;}')";
toret="$toret $(date)";

echo $toret >> /home/pi/Desktop/scripts/historialIp.txt;
