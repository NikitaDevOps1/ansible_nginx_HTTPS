#!/bin/bash

current_dir=$(pwd)

cd ssl
mkdir -p ssl_tmp
cd ssl_tmp
echo "Current directory: $current_dir"

openssl genrsa -out server.key 4096

openssl req -new -key server.key -out server.csr

openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt

rm server.csr
