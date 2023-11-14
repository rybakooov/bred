#!/bin/bash
pm2 delete "trade-study | Frontend"
pm2 delete "trade-study | Admin"
cd frontend
npm i
npm run build
pm2 start npm --name "trade-study | Frontend" -- run start
cd ../admin
npm i
npm run build
pm2 start npm --name "trade-study | Admin" -- run start
cd ..
pm2 ps
