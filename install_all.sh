#!/bin/bash


script_home="$(dirname $(readlink -f "$BASH_SOURCE"))"



## Create symlinks to /usr/local/bin/ for the Xboxdrv-Scripts that are needed for the systemd services.
find "$script_home" -name "*.sh" -not -path "*/.old/*" -path "*/xboxdrv-scripts/*" -exec ln -vs "{}" /usr/local/bin/ \;

## Create symlinks to /etc/udev/rules.d/
find "$script_home" -name "*.rules" -not -path "*/.old/*" -path "*/udev-rules/*" -exec ln -vs "{}" /etc/udev/rules.d/ \;


## Create symlinks to /etc/systemd/system/
find "$script_home" -name "*.service" -not -path "*/.old/*" -path "*/systemd-servicefiles/*" -exec ln -vs "{}" /etc/systemd/system/ \;

## Reload udev rules
udevadm control --reload-rules
## Reload systemd
systemctl daemon-reload
