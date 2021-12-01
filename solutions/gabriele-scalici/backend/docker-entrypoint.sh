#!/bin/sh

echo "Waiting for MariaDB"
./wait-for db:3306 

echo "Building Strapi"
#yarn develop
yarn build

echo "Launching Strapi"
yarn develop
