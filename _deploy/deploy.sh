#!/bin/bash

cd ~/Documents/
rm -rf ./kalen.pw
git clone git@github.com:kalenpw/kalen.pw.git
cd kalen.pw
npm install
npm run build
sudo rsync -r ./dist/ /web/kalen.pw/ --delete
cd /web/kalen.pw
sudo chown -R www-data:www-data ./