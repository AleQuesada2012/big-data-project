#!/bin/bash
docker rm bigdata-db
docker run --name bigdata-db -e POSTGRES_PASSWORD=proy -p 5433:5432 -d -d postgres