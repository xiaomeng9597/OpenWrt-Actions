#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default


# rm -rf package/luci-theme-argon
# rm -rf package/lean/luci-theme-argon
# rm -rf themes/luci-theme-argon
# rm -rf feeds/luci/themes/luci-theme-argon
 
 
 

#sed -i 's/coolsnowwolf\/packages/xiaomeng9597\/packages/g' feeds.conf.default
sed -i 's/coolsnowwolf\/luci/thxg123\/luci/g' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/xiaomeng9597/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default