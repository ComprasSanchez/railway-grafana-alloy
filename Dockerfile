FROM grafana/alloy:latest

COPY alloy-config.alloy /etc/alloy/config.alloy

EXPOSE 3100 9091

CMD ["run", "--server.http.listen-addr=0.0.0.0:9999", "--storage.path=/var/lib/alloy/data", "--stability.level=experimental", "/etc/alloy/config.alloy"]
