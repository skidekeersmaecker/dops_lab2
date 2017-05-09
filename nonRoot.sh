#!/bin/bash

echo "als vagrantuser uitgevoerd"
cd /var/www/dops-lab2-skidekeersmaecker
nodejs server.js  > /home/ubuntu/stdout.txt 2> /home/ubuntu/stderr.txt &