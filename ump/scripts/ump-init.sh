#!/bin/bash

echo "start ump-init script"
echo "configure hub"
echo "ip: $(hostname -i)"
echo "host: $(hostname)"
echo "hub: ${NMS_HUB_NAME}"
echo "db: ${DB_SERVER}"
echo "configure robot"
echo "configure wasp"
echo "start Nimbus"

while :; do
sleep 300
done
