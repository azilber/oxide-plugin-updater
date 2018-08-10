#!/bin/bash

/usr/bin/python2.7 ~/oxide-plugin-updater/plugin_updater.py -pluginDir "<your server home dir>/serverfiles/oxide/plugins" -login "<your@email.com>" -password "<your fancy password>" |grep 'update them manually' -A500 |tail -n +2 |tr -d '/\-\> /' > /tmp/plugins.txt
~/plugins-from-list.sh
