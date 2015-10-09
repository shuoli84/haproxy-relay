FROM index.alauda.cn/library/haproxy:latest

COPY haproxy.cfg /app/haproxy.cfg
COPY main.sh /app/main.sh
CMD /app/main.sh
