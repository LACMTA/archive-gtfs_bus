#!/bin/bash

remoteversion=$(curl -s https://api.github.com/repos/LACMTA/gtfs_bus/git/refs/heads/master | jq '.object.sha')
localversion=$(cat version.txt)

echo "remote version is: $remoteversion";
echo "stored version is: $localversion";
echo "";

if [[ "$remoteversion" = "$localversion" ]]; then
  echo "No update available."
else
    echo "Update available! Get the zip file";
    wget https://github.com/LACMTA/gtfs_bus/archive/master.zip ;
    echo "update the version file";
    curl -s https://api.github.com/repos/LACMTA/gtfs_bus/git/refs/heads/master | jq '.object.sha' > version.txt;
fi
