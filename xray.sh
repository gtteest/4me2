#!/bin/sh
if [ ! -f UUID ]; then
  UUID="40a6843d-06a1-41fd-8157-4df416c9beeb"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

