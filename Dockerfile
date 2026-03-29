FROM haproxy:alpine

COPY haproxy.cfg.template /app/haproxy.cfg.template

CMD sh -c "envsubst < /app/haproxy.cfg.template > /app/haproxy.cfg && haproxy -f /app/haproxy.cfg"
