#!/bin/bash



echo "als vagrantuser uitgevoerd"

cd /var/www/dops_lab2

nodejs server.js  > /home/ubuntu/stdout.txt 2> /home/ubuntu/stderr.txt &