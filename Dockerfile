FROM prom/prometheus:latest
USER root
COPY ./metrics/entrypoint.sh /app/metrics/entrypoint.sh
RUN chmod 777 /app/metrics/entrypoint.sh
COPY ./metrics/prometheus.yml /etc/prometheus/prometheus.yml.template