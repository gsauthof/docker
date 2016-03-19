#!/usr/bin/bash

set -x
set -e

# cleanup stale locks from previous runs
rm -f /tmp/.X1-lock

Xvfb :1 -extension RANDR -screen 0 1024x768x16 &
sleep 2

# openbox usually is enough, but
# xfwm4 seems to be more reliable regarding
# QApplicateion::focusWidget() || activeWindow()
#DISPLAY=:1 openbox
DISPLAY=:1 xfwm4
