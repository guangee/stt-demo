#!/usr/bin/env bash
pip freeze > requirements.txt
git add ./
git commit -m "快速提交:$1"
git push origin master