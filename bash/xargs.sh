#!/bin/bash
cat xargs-data.txt | xargs
cat xargs-data.txt | xargs -n3
cat xargs-data.txt | xargs -n1
echo "nameXnameXnameXname" | xargs -dX
cd /Users/liuyibao/Documents/DockerVolumes/mysql-5.6.35/ && ls | grep "\-slow\.log" | xargs -I {} tail -f {}