cd ..

METRICS_TOKEN=$(grep METRICS_TOKEN .env | cut -d '=' -f2)

ESCAPED_TOKEN=$(printf '%s\n' "$METRICS_TOKEN" | sed -e 's/[\/&]/\\&/g')

cp -f ./metrics/prometheus.yml.template ./metrics/prometheus.yml

sed -i "s|\$METRICS_TOKEN|$ESCAPED_TOKEN|g" ./metrics/prometheus.yml
