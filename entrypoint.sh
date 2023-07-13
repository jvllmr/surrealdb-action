#!/bin/sh

VERSION=$1
PORT=$2
USER=$3
PASSWORD=$4

if [ -z "$VERSION" ]; then
  VERSION='latest'
fi
echo "SurrealDB version: $VERSION - SurrealDB Port: $PORT"
echo "Starting SurrealDB"
docker run --name surrealdb --publish $PORT:8000 --detach surrealdb/surrealdb:$VERSION start --user $USER --pass $PASSWORD
