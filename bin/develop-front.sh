#!/bin/bash

./bin/init-db.sh
docker-compose up --scale nginx=0 --scale frontend=0