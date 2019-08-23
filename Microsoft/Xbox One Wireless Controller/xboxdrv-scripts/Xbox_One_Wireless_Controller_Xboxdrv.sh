#!/bin/bash

sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv \
	--silent \
	--quiet \
	--evdev $1 \
	--detach-kernel-driver \
	--force-feedback \
	--deadzone-trigger 15% \
	--deadzone 4000 \
	--mimic-xpad \
	--trigger-as-button \
	--device-name "Xbox One Wireless Controller (Xboxdrv)" \
	--evdev-absmap 	\
ABS_X=x1,\
ABS_Y=y1,\
ABS_RZ=x2,\
ABS_Z=y2,\
ABS_BRAKE=lt,\
ABS_GAS=rt,\
ABS_HAT0X=dpad_x,\
ABS_HAT0Y=dpad_y \
	--evdev-keymap \
BTN_SOUTH=a,\
BTN_EAST=b,\
BTN_NORTH=x,\
BTN_WEST=y,\
BTN_TL=lb,\
BTN_TR=rb,\
BTN_THUMBL=tl,\
BTN_THUMBR=tr,\
KEY_HOMEPAGE=guide,\
KEY_BACK=back,\
BTN_START=start

#	--calibration x1=-32767:0:32767,y1=-32767:0:32767,x2=-32767:0:32767,y2=-32767:0:32767,lt=-32767:0:32767,rt=-32767:0:32767 \
