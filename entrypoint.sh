#!/bin/sh
echo "####"
echo "#### ShadowSocks Proxy"
echo "####"
echo

SSS_PATH="/usr/bin/shadowsocks-server"

CONFIG_PATH=${CONFIG_PATH:-/etc/shadowsocks/config.yml}
UDP_TIMEOUT=${UDP_TIMEOUT:-5m0s}
VERBOSE=${VERBOSE:-}
GEOIP_COUNTRY_PATH=${GEOIP_COUNTRY_PATH:-}
METRICS_ADDRESS=${METRICS_ADDRESS:-}

ARGS="-config=$CONFIG_PATH -udptimeout=$UDP_TIMEOUT"

if [ $VERBOSE ]
then
    ARGS="$ARGS -verbose"
fi

if [ $GEOIP_COUNTRY_PATH ]
then
    ARGS="$ARGS -ip_country_db=$GEOIP_COUNTRY_PATH"
fi

if [ $METRICS_ADDRESS ]
then
    ARGS="$ARGS -metrics=$METRICS_ADDRESS"
fi

exec $SSS_PATH $ARGS
