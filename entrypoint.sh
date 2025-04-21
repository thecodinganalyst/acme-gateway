#!/bin/sh

echo "Generating kong.yml from environment variables..."

envsubst < /usr/local/kong/declarative/kong.template.yml > /usr/local/kong/declarative/kong.yml

echo "Starting Kong Gateway..."
exec kong docker-start
