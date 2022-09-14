#!/bin/bash
  
backupdate=$(date +%y%m%d%H%M)
docker build -t proweb:main${backupdate} /home/rapa/main/
docker image tag proweb:main${backupdate} 211.183.3.103:8888/proweb/web:main${backupdate}
docker push 211.183.3.103:8888/proweb/web:main${backupdate}

sed -i '5s/.*/    image: 211.183.3.103:8888\/proweb\/web:main"${backupdate}"/g' /home/rapa/main/web.yml
docker service update --image 211.183.3.103:8888/proweb/web:main${backupdate} main_main