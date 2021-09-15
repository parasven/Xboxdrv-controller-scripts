#!/bin/bash

sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv \
	--silent \
	--quiet \
	--evdev $1 \
	--detach-kernel-driver \
	--mimic-xpad \
	--trigger-as-button \
	--device-name "Nintendo Switch SNES Controller (Xboxdrv)" \
	--evdev-absmap 	\
ABS_HAT0X=dpad_x,\
ABS_HAT0Y=dpad_y \
	--evdev-keymap \
BTN_SOUTH=a,\
BTN_EAST=b,\
BTN_C=x,\
BTN_NORTH=y,\
BTN_WEST=lb,\
BTN_Z=rb,\
BTN_TL2=back,\
BTN_TR2=start
