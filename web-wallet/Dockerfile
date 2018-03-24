FROM node:6

# Install nginx
RUN apt-get update \
  && apt-get install -y nginx --no-install-recommends \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN npm install -g cross-env

RUN git clone https://github.com/bitshares/bitshares-ui.git /bitshares-ui
WORKDIR /bitshares-ui

RUN cross-env npm install --env.prod

VOLUME ["/bitshares-ui/build/dist"]
EXPOSE 80

## Copying default configuration
ADD conf/nginx.conf /etc/nginx/nginx.conf
ADD conf/start.sh /start.sh
RUN chmod a+x /start.sh

## Entry point
ENTRYPOINT ["/start.sh"]
