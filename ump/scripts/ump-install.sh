#!/bin/bash

echo "hub configuring"
echo "copy request file"
echo "downloading packages"
echo "init security"
echo "VARIABLES:"
# (ONLY FOR IMAGES) settings for temporary database, it is required for installing uimsaasconfigue during building image
echo "\t${NMS_HUB_NAME}"
echo "\t${DB_SERVER}"
ping $DB_SERVER -c 1

echo "update hub"
echo "remove archive"
echo "remove all log files"
echo "build time: HH:mm:ss"
