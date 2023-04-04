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



# rm -rf package/luci-theme-argon
# rm -rf package/lean/luci-theme-argon
# rm -rf themes/luci-theme-argon
# rm -rf feeds/luci/themes/luci-theme-argon




# Modify default IP
# sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate
sed -i 's/luci-theme-bootstrap/luci-theme-opentomcat/' feeds/luci/collections/luci/Makefile
sed -i 's/luci-app-samba4/luci-app-samba/g' package/lean/autosamba/Makefile






svn co https://github.com/thinktip/luci-theme-neobird/trunk package/luci-theme-neobird
svn co https://github.com/Leo-Jo-My/luci-theme-opentomcat/trunk package/luci-theme-opentomcat



svn co https://github.com/ophub/luci-app-amlogic/trunk/luci-app-amlogic package/luci-app-amlogic
svn co https://github.com/Lienol/openwrt-package/trunk/luci-app-filebrowser package/luci-app-filebrowser





# fix luci-theme-opentomcat dockerman icon missing
rm -f package/luci-theme-opentomcat/files/htdocs/fonts/advancedtomato.woff
cp $GITHUB_WORKSPACE/general/advancedtomato.woff package/luci-theme-opentomcat/files/htdocs/fonts
sed -i 's/e025/e02c/g' package/luci-theme-opentomcat/files/htdocs/css/style.css
sed -i 's/66CC00/00b2ee/g' package/luci-theme-opentomcat/files/htdocs/css/style.css