#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source ${SCRIPT_DIR}/x86-openwrt.sh

CONFIG_NAME="_docker"

cd openwrt

cat >>.config <<-EOF
CONFIG_PACKAGE_docker-compose=y
CONFIG_PACKAGE_luci-app-dockerman=y
EOF

cd ..
