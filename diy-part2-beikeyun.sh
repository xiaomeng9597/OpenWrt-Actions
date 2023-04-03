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



 rm -rf package/luci-theme-argon
 rm -rf package/lean/luci-theme-argon
 rm -rf themes/luci-theme-argon
 rm -rf feeds/luci/themes/luci-theme-argon




# Modify default IP
# sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate
sed -i 's/luci-theme-bootstrap/luci-theme-argon/' feeds/luci/collections/luci/Makefile
sed -i 's/luci-app-samba4/luci-app-samba/g' package/lean/autosamba/Makefile



#sed -i 's/coolsnowwolf\/packages/xiaomeng9597\/packages/g' feeds.conf.default
#sed -i 's/coolsnowwolf\/luci/xiaomeng9597\/luci/g' feeds.conf.default
sed -i 's/coolsnowwolf\/luci/thxg123\/luci/g' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/xiaomeng9597/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default






git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/lean/luci-app-argon-config



svn co https://github.com/ophub/luci-app-amlogic/trunk/luci-app-amlogic package/luci-app-amlogic
svn co https://github.com/Lienol/openwrt-package/trunk/luci-app-filebrowser package/luci-app-filebrowser