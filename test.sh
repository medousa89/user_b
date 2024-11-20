#!/bin/sh
wget "https://raw.githubusercontent.com/And73Smi/IPTV-M3U/refs/heads/main/iptv.m3u"
echo "#NAME GreekStreamTV" > "userbouquet.greekstreamtv.tv"
sed -e "/#EXTM3U/d" -e "s/https/http/g" -e "s/^http:/#SERVICE 4097:0:1:0:0:0:0:0:0:0:https%3a/" -e "s/.*,/:/"   "iptv.m3u" >> "userbouquet.greekstreamtv.tv"
