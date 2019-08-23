#!/bin/bash

sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv \
	--silent \
	--quiet \
	--evdev $1 \
	--detach-kernel-driver \
	--mimic-xpad \
	--trigger-as-button \
	--device-name "8Bitdo SFC30 GamePad (Xboxdrv)" \
	--evdev-absmap 	\
ABS_X=dpad_x,\
ABS_Y=dpad_y \
	--evdev-keymap \
BTN_EAST=a,\
BTN_SOUTH=b,\
BTN_WEST=x,\
BTN_NORTH=y,\
BTN_TL=lb,\
BTN_TR=rb,\
BTN_SELECT=back,\
BTN_START=start
