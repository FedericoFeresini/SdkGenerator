#!/bin/bash
cat /app/properties
echo "==================="
cat /app/properties | mo /app/application.properties.template > /app/application.properties
echo "-------------------------"
cat /app/application.properties
echo "~~~~~~~~~~~~~~~~~~~"
NAME=Ico SURNAME=Fere mo /app/application.properties > /app/application2.properties
echo "{}{}{}{}{}{}{}{}"
cat /app/application2.properties
exec "$@"
