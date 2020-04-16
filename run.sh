#!/usr/bin/env bash
git pull origin master
python wavs_to_model.py
docker build -t demo2:0.1 .
docker-compose down
docker-compose up -d