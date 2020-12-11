#!/bin/bash

echo "Put the Hostname Master1"
read Hostname_Master1
echo "Put the Hostname Master2"
read Hostname_Master2
echo "Put the Hostname Worker1"
read Hostname_Worker1
echo "Put the Hostname Worker2"
read Hostname_Worker2
echo "Put the Hostname LoadBalancer"
read Hostname_LoadBalancer
echo "Put the Private IP Master1"
read Private_IP_Master1
echo "Put the Private IP Master2"
read Private_IP_Master2
echo "Put the Private IP Worker1"
read Private_IP_Worker1
echo "Put the Private IP Worker2"
read Private_IP_Worker2
echo "Put the Private IP LoadBalancer"
read Private_IP_LoadBalancer

sed "s/<Hostname Master1>/$Hostname_Master1/g" $(pwd)/kthw.md > kthw-1.md
sed -i '' "s/<Hostname Master2>/$Hostname_Master2/g" kthw-1.md
sed -i '' "s/<Hostname Worker1>/$Hostname_Worker1/g" kthw-1.md
sed -i '' "s/<Hostname Worker2>/$Hostname_Worker2/g" kthw-1.md
sed -i '' "s/<Hostname LoadBalancer>/$Hostname_LoadBalancer/g" kthw-1.md
sed -i '' "s/<Private IP Master1>/$Private_IP_Master1/g" kthw-1.md
sed -i '' "s/<Private IP Master2>/$Private_IP_Master2/g" kthw-1.md
sed -i '' "s/<Private IP Worker1>/$Private_IP_Worker1/g" kthw-1.md
sed -i '' "s/<Private IP Worker2>/$Private_IP_Worker2/g" kthw-1.md
sed -i '' "s/<Private IP LoadBalancer>/$Private_IP_LoadBalancer/g" kthw-1.md

npm install -g vmd

vmd kthw-1.md