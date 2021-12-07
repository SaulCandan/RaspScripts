#!/bin/bash
 
echo "A mimir?"
read si
if [ $si != "Si" ]
then
echo "No mimido"
else
sudo shutdown now
fi
