#!/bin/bash
# This will delete the runnig containers+vloumes+image and then rebuild the image  
#

sudo chown -R 101:101 nginx-bunkerized/keys
docker-compose -f docker-compose.yml -f docker-compose.prod.yml down -v
docker rmi docker-boilerplate_express-app 
docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d --build
docker ps