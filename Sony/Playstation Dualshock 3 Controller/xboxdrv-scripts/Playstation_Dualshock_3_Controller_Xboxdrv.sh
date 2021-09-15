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
	--device-name "Playstation Dualshock 3 Controller (Xboxdrv)" \
	--evdev-absmap 	\
ABS_X=x1,\
ABS_Y=y1,\
ABS_RX=x2,\
ABS_RY=y2,\
ABS_Z=lt,\
ABS_RZ=rt \
	--evdev-keymap \
BTN_DPAD_UP=du,\
BTN_DPAD_DOWN=dd,\
BTN_DPAD_LEFT=dl,\
BTN_DPAD_RIGHT=dr,\
BTN_SOUTH=a,\
BTN_EAST=b,\
BTN_WEST=x,\
BTN_NORTH=y,\
BTN_TL=lb,\
BTN_TR=rb,\
BTN_THUMBL=tl,\
BTN_THUMBR=tr,\
BTN_MODE=guide,\
BTN_SELECT=back,\
BTN_START=start

#	--calibration x1=-32767:0:32767,y1=-32767:0:32767,x2=-32767:0:32767,y2=-32767:0:32767,lt=-32767:0:32767,rt=-32767:0:32767 \
