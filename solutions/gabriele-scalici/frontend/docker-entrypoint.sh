#!/bin/sh

echo "Waiting for Strapi"
./wait-for backend:1337 

echo "Launching Gatsby"
gatsby develop -H 0.0.0.0