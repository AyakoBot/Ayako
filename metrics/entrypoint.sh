apt-get install -y gettext
envsubst < /etc/prometheus/prometheus.yml.template > /etc/prometheus/prometheus.yml
prometheus --config.file=/etc/prometheus/prometheus.yml