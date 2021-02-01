#!/bin/bash
cat << /app/properties mo /app/application.properties.template 
#> /app/application.properties
echo "-------------------------"
NAME=ico SURNAME=fere mo /app/application.properties.template 
#cat << /app/application.properties
exec "$@"
