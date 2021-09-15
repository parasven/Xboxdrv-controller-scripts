#!/bin/bash

sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv \
	--silent \
	--quiet \
	--evdev $1 \
	--detach-kernel-driver \
	--trigger-as-button \
	--mimic-xpad \
	--device-name "8Bitdo M30 GamePad (Xboxdrv)" \
	--evdev-absmap 	\
ABS_X=dpad_x,\
ABS_Y=dpad_y \
	--evdev-keymap \
BTN_SOUTH=a,\
BTN_EAST=b,\
BTN_NORTH=x,\
BTN_WEST=y,\
BTN_TL2=lb,\
BTN_TR2=rb,\
BTN_TL=tl,\
BTN_TR=tr,\
BTN_C=guide,\
BTN_SELECT=back,\
BTN_START=start
