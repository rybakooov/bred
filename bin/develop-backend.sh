#!/bin/bash

./bin/init-db.sh
docker-compose up --scale django=0 --scale nginx=0