#!/bin/bash

if [ -e "/conf/cli-wallet/wallet.json" ]; then
 echo "Copying predefined wallet.json file"
 cp -v /conf/cli-wallet/wallet.json /wallet.json
fi

cli_wallet \
   -s wss://dex.rnglab.org \
   -H 0.0.0.0:8092 \
   -r 0.0.0.0:8099 \
   -d
