#!/bin/sh
set -e

PORT=${PORT:-80}

envsubst '${PORT}' < /etc/nginx/http.d/default.conf.template > /etc/nginx/http.d/default.conf

exec nginx -g 'daemon off;'