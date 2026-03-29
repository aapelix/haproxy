FROM haproxy:alpine

USER root

RUN apk add --no-cache gettext

COPY haproxy.cfg.template /haproxy.cfg.template

CMD sh -c "envsubst < /haproxy.cfg.template > /tmp/haproxy.cfg && haproxy -f /tmp/haproxy.cfg"
