#!/bin/bash
mo /app/application.properties.template > /app/application.properties
exec "$@"
