#!/usr/bin/env bash

docker-compose up -d
gleam run
docker-compose down
