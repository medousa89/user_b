#!/bin/sh
wget "https://raw.githubusercontent.com/And73Smi/IPTV-M3U/refs/heads/main/iptv.m3u"
sed -e "/#EXTM3U/d"  -e "/######/d" -e "s/https/http/g" -e "s/^http:/<uri>https/" -e "s/.*,/<name>/"   "iptv.m3u" > "stream.xml"
./new.py
