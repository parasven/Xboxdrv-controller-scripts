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
	--device-name "Nintendo Switch Pro Controller (Xboxdrv)" \
	--axismap X2=Y2,Y2=X2\
	--calibration \
x1=-25236:0:30635,\
y1=-27469:0:30652,\
x2=-26666:0:28608,\
y2=-27361:0:30143 \
	--evdev-absmap 	\
ABS_X=x1,\
ABS_Y=y1,\
ABS_RX=x2,\
ABS_RY=y2,\
ABS_HAT0X=dpad_x,\
ABS_HAT0Y=dpad_y \
	--evdev-keymap \
BTN_SOUTH=a,\
BTN_EAST=b,\
BTN_C=x,\
BTN_NORTH=y,\
BTN_TL=lt,\
BTN_TR=rt,\
BTN_WEST=lb,\
BTN_Z=rb,\
BTN_SELECT=tl,\
BTN_START=tr,\
BTN_MODE=guide,\
BTN_TL2=back,\
BTN_TR2=start
