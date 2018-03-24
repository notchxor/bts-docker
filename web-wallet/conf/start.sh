#!/bin/bash

npm run build
cp -r /bitshares-ui/build/dist/* /var/www/
nginx -g "daemon off;"
