#!/usr/bin/env bash
git pull origin master
docker build -t demo2:0.1 .
docker-compose down
docker-compose up -d