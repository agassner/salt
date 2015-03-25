#!/bin/bash

apt-get install curl git

curl -L https://bootstrap.saltstack.com -o install_salt.sh
sh install_salt.sh