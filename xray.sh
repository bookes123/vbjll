#!/bin/sh
if [ ! -f UUID ]; then
  UUID="815aa16b-b3e5-4dbb-8b98-6b45b36e216b"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

