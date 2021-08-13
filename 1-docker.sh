#!/bin/sh
sudo docker run -d --name=redis redis
sudo docker run -d --name=db postgres:9.4
sudo docker run -d --name=vote -p 5000:80 --link redis:redis voting-app
docker run -d --name=result -p 5001:80 --link db:db result-app
docker run -d --name=worker --link redis:redis --link db:db worker





