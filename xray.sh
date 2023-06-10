#!/bin/sh
if [ ! -f UUID ]; then
  UUID="3d0fe477-3c1d-4719-8285-3613e6c398fc"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

