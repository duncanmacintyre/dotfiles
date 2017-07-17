#!/bin/bash
#
# ~/bin/baraction.sh
#
# script for spectrwm bar
#

SLEEP_SEC=5  # set bar_delay = 5 in /etc/spectrwm.conf

# loops forever outputting a line every SLEEP_SEC secs
while :; do
        acpi | sed 's/.*\([0-9]\{2,3\}%\).*/\1/'
        sleep $SLEEP_SEC
done
