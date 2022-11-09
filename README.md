Forked from https://github.com/riverscn/build-openwrt-firmware

+++++++

# Build Openwrt firmware with ease
Scripts for building openwrt router box firmware.

[![Build OpenWrt Firmware - Raspi](https://github.com/riverscn/build-openwrt-firmware/actions/workflows/BUILD_CI_raspi.yml/badge.svg)](https://github.com/riverscn/build-openwrt-firmware/actions/workflows/BUILD_CI_raspi.yml)
[![Build OpenWrt Firmware - X86](https://github.com/riverscn/build-openwrt-firmware/actions/workflows/BUILD_CI_x86.yml/badge.svg)](https://github.com/riverscn/build-openwrt-firmware/actions/workflows/BUILD_CI_x86.yml)

[下载最新固件](https://github.com/riverscn/build-openwrt-firmware/releases)

[使用方法及相关测试](https://blog.lishun.me/openwrt-mega-post)

# Default hardware targets

* X86
* Raspberry Pi 4 Series

You can [add your own target config](configs).

# Features

* Use [Immortalwrt](https://github.com/immortalwrt/immortalwrt) source, which makes things easier.
* Use Openwrt 21.02 branch.
* Enable IPv6 compatibility by default.
* Enable Flow Offloading and Full Cone NAT by default.
* Enable WiFi by default. You can turn it off to achieve lower temperature.
* Enable USB Ethernet and Storage support.
* You can [fork this repo](https://github.com/riverscn/build-openwrt-firmware/generate) and make your own [package config](configs). It's very easy.

# Pre-installed packages

## Common

* luci-app-passwall
* luci-app-udpxy
* luci-app-upnp
* luci-theme-argon
* luci-app-zerotier
* luci-app-diskman
* luci-app-udp2raw

## Only for "with-docker" image

* luci-app-dockerman
* docker-compose

Docker makes network complex, only for advanced users!

## Only for main router (x86)

* luci-app-acme
* luci-app-iptvhelper
* luci-app-mwan3
* luci-app-omcproxy
* luci-app-sqm

# Build your own firmwares

## Build online

[fork this repo](https://github.com/riverscn/build-openwrt-firmware/generate) and create Github Actions workflow!

## Build locally

Alternatively, you can build openwrt on your own computer.

Ubuntu or Debian is supported.

Run `./build.sh configs/*.sh` to build all targets.

Run `./build.sh configs/xxxx-openwrt.sh` to build one target.
