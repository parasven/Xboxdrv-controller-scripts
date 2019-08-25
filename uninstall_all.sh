#!/bin/bash


## Remove all Symlinks we created in /usr/local/bin
rm -v /usr/local/bin/Xbox_One_Wireless_Controller_Xboxdrv.sh
rm -v /usr/local/bin/Nintendo_Switch_Pro_Controller_Xboxdrv.sh
rm -v /usr/local/bin/8Bitdo_SFC30_GamePad_Xboxdrv.sh
rm -v /usr/local/bin/Xbox_360_Wireless_Receiver_Xboxdrv.sh

## Remove all Symlinks we created in /etc/udev/rules.d/
rm -v /etc/udev/rules.d/99-input-8Bitdo_SFC30_GamePad_Xboxdrv.rules
rm -v /etc/udev/rules.d/99-input-Nintendo_Switch_Pro_Controller_Xboxdrv.rules
rm -v /etc/udev/rules.d/99-input-Xbox_One_Wireless_Controller_Xboxdrv.rules
rm -v /etc/udev/rules.d/99-input-Xbox_360_Wireless_Receiver_Xboxdrv.rules

## Remove all Symlinks we created in 
rm -v /etc/systemd/system/Nintendo_Switch_Pro_Controller_Xboxdrv@.service
rm -v /etc/systemd/system/8Bitdo_SFC30_GamePad_Xboxdrv@.service
rm -v /etc/systemd/system/Xbox_One_Wireless_Controller_Xboxdrv@.service
rm -v /etc/systemd/system/Xbox_360_Wireless_Receiver_Xboxdrv@.service

## Reload udev rules
udevadm control --reload-rules
## Reload systemd
systemctl daemon-reload
