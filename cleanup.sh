#!/bin/bash
docker compose down --remove-orphans
docker network prune --force
docker system prune --force
sudo find . | grep -E "(\.ipynb_checkpoints|__pycache__|\.pyc|\.pyo$|\.Trash-0)" | xargs sudo rm -rf
sudo chown -R ${USER}:${USER} .
isort --profile black .
