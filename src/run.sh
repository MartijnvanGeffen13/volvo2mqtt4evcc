#!/command/with-contenv bashio
export IS_HA_ADDON="true"

export MQTTHOST=$(bashio::services mqtt "host")
export MQTTPORT=$(bashio::services mqtt "port")
export MQTTUSER=$(bashio::services mqtt "username")
export MQTTPASS=$(bashio::services mqtt "password")

cp /tmp/myca.crt /usr/local/share/ca-certificates/root_cert.crt
update-ca-certificates
python -u main.py
