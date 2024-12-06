#!/bin/sh

set -e
mongoimport --host localhost --db ratings --username $MONGODB_USERNAME --password $MONGODB_PASSWORD \
  --collection $MONGODB_DATABASE --drop --file /docker-entrypoint-initdb.d/ratings_data.json
