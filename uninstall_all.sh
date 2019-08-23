#!/bin/bash


script_home="$(dirname $(readlink -f "$BASH_SOURCE"))"


## Remove all Symlinks we created in /usr/local/bin
find /usr/local/bin/ -type l -name "*_Xboxdrv.sh" -exec rm -v "{}" \;

## Remove all Symlinks we created in /etc/udev/rules.d/
find /etc/udev/rules.d/ -type l -name "99-input-*_Xboxdrv.rules" -exec rm -v "{}" \;

## Remove all Symlinks we created in 
find /etc/systemd/system/ -type l -name "*_Xboxdrv@.service" -exec rm -v "{}" \;

## Reload udev rules
udevadm control --reload-rules
## Reload systemd
systemctl daemon-reload
