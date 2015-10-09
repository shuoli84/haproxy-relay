# haproxy-relay
docker run -it -p 8090:8090 -e LISTENING_PORT=PORT -e UPSTREAM=SERVER_IP:PORT  haproxy-relay
