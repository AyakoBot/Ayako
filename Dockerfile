FROM prom/prometheus:latest
USER root
COPY ./metrics/prometheus.yml /etc/prometheus/prometheus.yml.template