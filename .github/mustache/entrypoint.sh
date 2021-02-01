#!/bin/bash
cat /app/properties
echo "==================="
cat /app/properties | mo /app/application.properties.template > /app/application.properties
echo " ////SET VAR///"
export NAME="Federico"
export SURNAME = ""
mo /app/application.properties > /app/application2.properties
cat /app/application2.properties
exec "$@"
