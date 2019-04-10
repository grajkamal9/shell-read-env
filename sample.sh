#!/bin/sh
FILE=.env 
DB_HOST="$(cat ${FILE} | grep 'DB_HOST=' | cut -f2 -d '=')"
DB_DATABASE="$(cat ${FILE}  | grep 'DB_DATABASE=' | cut -f2 -d '=')"
DB_USERNAME="$(cat ${FILE}  | grep 'DB_USERNAME=' | cut -f2 -d '=')"
DB_PASSWORD="$(cat ${FILE}  | grep 'DB_PASSWORD=' | cut -f2 -d '=')"

echo ${DB_DATABASE}
echo ${DB_HOST}


mysqldump -f -h  ${DB_HOST} -u ${DB_USERNAME} -p${DB_PASSWORD} ${DB_DATABASE} > ${DB_DATABASE}.sql
