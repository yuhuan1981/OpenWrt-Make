#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.11.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Add Lienol's Packages
git clone --depth=1 https://github.com/Lienol/openwrt-package

git clone --depth=1 https://github.com/xiaorouji/openwrt-package

# Add Lienol's Packages
#git clone --depth=1 https://github.com/SuLingGG/openwrt-package

# Add mentohust & luci-app-mentohust.
git clone --depth=1 https://github.com/BoringCat/luci-app-mentohust
git clone --depth=1 https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk

# Add ServerChan
git clone --depth=1 https://github.com/tty228/luci-app-serverchan

# Add OpenClash
git clone --depth=1 -b master https://github.com/vernesong/OpenClash



# Add luci-app-onliner (need luci-app-nlbwmon)
git clone --depth=1 https://github.com/rufengsuixing/luci-app-onliner

# Add luci-app-adguardhome
git clone --depth=1 https://github.com/rufengsuixing/luci-app-adguardhome

# Add Rclone-OpenWrt
git clone --depth=1 https://github.com/ElonH/Rclone-OpenWrt

# Add luci-app-diskman
git clone --depth=1 https://github.com/lisaac/luci-app-diskman
mkdir parted
cp luci-app-diskman/Parted.Makefile parted/Makefile

# Add luci-app-dockerman
git clone --depth=1 https://github.com/KFERMercer/luci-app-dockerman
mkdir luci-lib-docker
curl -s -o ./luci-lib-docker/Makefile https://raw.githubusercontent.com/lisaac/luci-lib-docker/master/Makefile
rm -rf ../lean/luci-app-docker

# Add luci-theme-argon
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon
rm -rf ../lean/luci-theme-argon

# Add tmate
svn co https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/tmate
svn co https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/msgpack-c

# Add gotop
svn co https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/gotop

# Subscribe converters
svn co https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/subconverter
svn co https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/jpcre2
svn co https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/rapidjson

# Add smartdns
svn co https://github.com/pymumu/smartdns/trunk/package/openwrt ../smartdns
svn co https://github.com/project-openwrt/openwrt/trunk/package/ntlf9t/luci-app-smartdns ../luci-app-smartdns

# Add udptools
git clone --depth=1 https://github.com/bao3/openwrt-udp2raw
git clone --depth=1 https://github.com/bao3/openwrt-udpspeeder
git clone --depth=1 https://github.com/bao3/luci-udptools

# Add OpenAppFilter
git clone --depth=1 https://github.com/destan19/OpenAppFilter
