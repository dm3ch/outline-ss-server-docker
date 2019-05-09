# Outline ShadowSocks server inside container
This repository contains sources for building [Outline ShadowSocks Server](https://github.com/Jigsaw-Code/outline-ss-server) container.

## Usage example
```
docker run -d --name shadowsocks \
           -e METRICS_ADDRESS=localhost:9123 \
           -v /etc/shadowsocks:/etc/shadowsocks \
           -p 9123:9123 \
           -p 9000:9000 \
           -p 9000:9000/udp \
           dm3ch/shadowsocks-server
```

## Environment variables
| Name | Default value | Description |
|------|---------------|-------------|
| SSS_PATH | `/usr/bin/shadowsocks-server` | Path to shadowsocks server binary inside container |
| CONFIG_PATH | `/etc/shadowsocks/config.yml` | Path to config file inside cotainer |
| UDP_TIMEPOT | `5m0s` | Udp tunnel timeout |
| VERBOSE | `False` | Enables verbose logging if true |
| GEOIP_COUNTRY_PATH | empty | Sets path to GeoLite2 Country DB file if defined |
| METRICS_ADDRESS | empty | Sets metrics listen address if defined |


[Github Repository](https://github.com/Dm3Ch/outline-ss-server-docker)
