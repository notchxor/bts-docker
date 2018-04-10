FROM bts-base

VOLUME ["/conf/cli-wallet/"]

## Copying default configuration
ADD conf/start.sh /start.sh
RUN chmod a+x /start.sh

## Exposing Ports
EXPOSE 8092
EXPOSE 8099

## Entry point
ENTRYPOINT ["/start.sh"]
