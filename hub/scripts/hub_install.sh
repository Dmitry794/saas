#!/bin/bash

echo "get IP"
ip=$(hostname -i)
echo "current ip: $ip"
echo "install hub..."
sleep 15
echo "OK"
echo "stop Nimbus"
sleep 15
echo "Nimbus stopped"
echo "cleanup"
