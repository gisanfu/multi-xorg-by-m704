#!/bin/bash

touchid=($(xinput list | grep -ir touchkit | sed s/".*id=\([0-9]*\).*"/\\1/))

xinput set-int-prop $touchid "Device Enabled" 8 0
