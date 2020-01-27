#!/bin/bash

#clean
rm -rf LtiLauncher

#get repo
git clone https://github.com/Drieam/LtiLauncher

# insert labels
cd LtiLauncher
mv Dockerfile Dockerfile.bak
head -n 1 Dockerfile.bak >> Dockerfile
cat ../docker-labels.txt >> Dockerfile
tail -n +2 Dockerfile.bak >> Dockerfile

