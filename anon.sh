#!/bin/bash
r=`tput setaf 1`
y=`tput setaf 3`
key=`tput init`
echo `sudo anonsurf start`&> /dev/null
sleep 5
trap ctrl_c INT
function ctrl_c()
{
echo -e '\n'
echo ${r}"** Stopping AnonSurf..."
echo `sudo anonsurf stop`
sleep 10
exit
}
while :
do
echo -e '\n'
echo "Current IP ADDRESS: "${r}`curl -s -H "Accept: application/json" -u 8c748e983eca42: ipinfo.io/ip`${key}
echo "Current Country: "${r}`curl -s -H "Accept: application/json" -u 8c748e983eca42: ipinfo.io/country`${key}
echo "Current Region: "${r}`curl -s -H "Accept: application/json" -u 8c748e983eca42: ipinfo.io/region`${key}
echo "Current Location: "${r}`curl -s -H "Accept: application/json" -u 8c748e983eca42: ipinfo.io/loc`${key}
echo "Belongs To: "${r}`curl -s -H "Accept: application/json" -u 8c748e983eca42: ipinfo.io/org`${key}
lnk='https://www.google.com/maps/search/?api=1&query='
lat=`curl -s -H "Accept: application/json" -u 8c748e983eca42: ipinfo.io/loc`
mqry=$lnk$lat
echo ${y}$mqry${key}
echo `anonsurf changeid`&> /dev/null
sleep 10
done
