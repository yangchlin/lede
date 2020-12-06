#!/bin/bash
# 本脚本工作目录必须是git clone的主目录
# x86_64

# 添加Luci主题
# packages_path=package/openwrt-packages
# mkdir -p $packages_path

# git clone https://github.com/openwrt-develop/luci-theme-atmaterial $packages_path/luci-theme-atmaterial
# git clone https://github.com/aboutboy/luci-theme-butongwifi.git
# git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git

# 修改默认IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate
# sed -i 's/192.168/192.168/g' package/base-files/files/bin/config_generate

# 修改wifi设置
# sed -i 's/OpenWrt/OpenWrt_$(cat /sys/class/ieee80211/${dev}/macaddress|awk -F ":" '{print $4""$5""$6 }'| tr a-z A-Z)/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 修改Tvheadend版本
# sed -i 's/4.0.10/4.3/g' feeds/packages/multimedia/tvheadend/makefile
