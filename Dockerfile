FROM prom/prometheus:v2.11.1
COPY prometheus.yml /etc/prometheus/prometheus.yml

# 168h is one week.
ENTRYPOINT [ "/bin/prometheus", \
    "--config.file=/etc/prometheus/prometheus.yml", \
    "--storage.tsdb.path=/prometheus", \
    "--storage.tsdb.retention=168h"]S
