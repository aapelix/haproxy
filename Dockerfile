FROM haproxy:alpine

COPY haproxy.cfg.template /haproxy.cfg.template

CMD sh -c "envsubst < /haproxy.cfg.template > /usr/local/etc/haproxy/haproxy.cfg && haproxy -f /usr/local/etc/haproxy/haproxy.cfg"
