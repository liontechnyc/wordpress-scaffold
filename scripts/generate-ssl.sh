#!/usr/bin/bash

set -p

source .env

mkdir -p certs

openssl req \
    -new \
    -newkey rsa:4096 \
    -days 365 \
    -nodes \
    -x509 \
    -subj "//C=US\ST=NewYork\L=NewYork\O=LionTechNYC\CN=${SITE_URL}" \
    -keyout certs/site.key \
    -out certs/site.cert

openssl dhparam -out certs/dhparam.pem 2048

chmod -R 0444 certs/*