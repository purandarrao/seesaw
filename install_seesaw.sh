SEESAW_BIN="/usr/local/seesaw"
SEESAW_ETC="/etc/seesaw"
SEESAW_LOG="/var/log/seesaw"

install -d "${SEESAW_BIN}" "${SEESAW_ETC}" "${SEESAW_LOG}"

install "${GOPATH}/bin/seesaw_cli" /usr/bin/seesaw

for component in {ecu,engine,ha,healthcheck,ncc,watchdog}; do
  install "${GOPATH}/bin/seesaw_${component}" "${SEESAW_BIN}"
done

install "etc/init/seesaw_watchdog.conf" "/etc/init"
install "etc/seesaw/watchdog.cfg" "${SEESAW_ETC}"

# Enable CAP_NET_RAW for seesaw binaries that require raw sockets.
/sbin/setcap cap_net_raw+ep "${SEESAW_BIN}/seesaw_ha"
/sbin/setcap cap_net_raw+ep "${SEESAW_BIN}/seesaw_healthcheck"
