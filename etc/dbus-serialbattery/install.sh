#!/bin/bash

# remove comment for easier troubleshooting
#set -x

echo ""
PS3="Select which version you want to install and enter the corresponding number [1]: "


echo ""

## latest release
if [ "$version" = "latest release (recommended)" ]; then
    # download latest release
    curl -s https://api.github.com/repos/d3s1/dbus-test-cmd/releases/latest | grep "browser_download_url.*gz" | cut -d : -f 2,3 | tr -d \" | wget -O /tmp/venus-data.tar.gz -qi -
fi

# restore config.ini
if [ -f "/data/etc/dbus-serialbattery_config.ini.backup" ]; then
    mv /data/etc/dbus-serialbattery_config.ini.backup /data/etc/dbus-serialbattery/config.ini
fi


# run install script >= v1.0.0
if [ -f "/data/etc/dbus-serialbattery/reinstall-local.sh" ]; then
    bash /data/etc/dbus-serialbattery/reinstall-local.sh
# run install script < v1.0.0
elif [ -f "/data/etc/dbus-serialbattery/reinstalllocal.sh" ]; then
    bash /data/etc/dbus-serialbattery/reinstalllocal.sh
fi
