#!/bin/bash

### BEGIN INIT INFO
# Provides:          gisanfu-switch-xorg.sh
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Start daemon at boot time
# Description:       Enable service provided by daemon.
### END INIT INFO

RESULT=`cat /proc/cmdline | grep gisanfu-switch-xorg-768`

if [ "$RESULT" != "" ]; then
	cp /etc/X11/xorg.conf.768 /etc/X11/xorg.conf
else
	cp /etc/X11/xorg.conf.600 /etc/X11/xorg.conf
fi
