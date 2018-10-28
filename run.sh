#!/bin/sh
sed -i -e "s|base_url : False|base_url : ${BASE_URL}|g" \
       -e "s/image_proxy : False/image_proxy : ${IMAGE_PROXY}/g" \
       -e "s/ultrasecretkey/$(openssl rand -hex 16)/g" \
       /usr/local/searx/searx/settings.yml

if [ -n "$HTTP_PROXY_URL" ] || [ -n "$HTTPS_PROXY_URL" ]; then
  sed -i "s~^#    proxies :~    proxies:\\n      http: ${HTTP_PROXY_URL}\\n      https: ${HTTPS_PROXY_URL}\\n~" /usr/local/searx/searx/settings.yml
fi

exec su-exec $UID:$GID /sbin/tini -- python /usr/local/searx/searx/webapp.py
