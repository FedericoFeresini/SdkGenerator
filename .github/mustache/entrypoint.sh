#!/bin/bash
cat << properties
echo "==================="
cat << /app/properties mo /app/application.properties.template > /app/application.properties
echo "-------------------------"
cat << /app/application.properties
exec "$@"
