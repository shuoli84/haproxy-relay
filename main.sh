#!/bin/bash

mv /app/haproxy.cfg /tmp/haproxy.cfg.old
sed 's/{{LISTENING_PORT}}/'"$LISTENING_PORT"'/g' /tmp/haproxy.cfg.old > /app/haproxy.cfg

mv /app/haproxy.cfg /tmp/haproxy.cfg.old
sed 's/{{UPSTREAM}}/'"$UPSTREAM"'/g' /tmp/haproxy.cfg.old > /app/haproxy.cfg

haproxy -f /app/haproxy.cfg
