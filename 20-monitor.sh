#!/bin/bash

RAM=free -m |awk -F " " '{print $2,$3}'
DISK=df -hT |grep xfs|awk -F " " '{print $7,$6}'
CPU=top -bn1 |awk -F " " '{print $9}'

end=$((SECONDS+3600))

while [ $SECONDS -lt $end ]; 
do
echo "ram usage :$RAM"
echo "disk usage :$DISK"
echo "cpu usage :$CPU"

sleep 5
done