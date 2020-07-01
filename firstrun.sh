#!/bin/bash
password=`openssl rand -base64 14`
## generate password
 openssl req -newkey rsa:2048 -nodes -keyout dataviz.key -out dataviz.csr -subj '/CN=dataviz/O=dataviz LTD./C=FR' && openssl x509 -signkey dataviz.key -in dataviz.csr -req -days 365 -out dataviz.crt && openssl pkcs12 -inkey dataviz.key -in dataviz.crt -export -out dataviz.pfx -passout pass:123456
## adding password to docker-compose for postgresql as argument
docker-compose run --rm server create_db