#!/bin/bash

# Using zenity for the GUI: https://help.gnome.org/users/zenity/
ask=`zenity --list --title="Charge Threshold Control" --text="Select a charging threshold" --column="0" "60%" "80%" "100%" --hide-header`

# Echo the relevant charge threshold to the file.
# sudo tee is used to redirect output of echo to the file, since permission may be denied
if [ "$ask" == "60%" ]; then
    echo 60 | sudo tee /sys/class/power_supply/BAT0/charge_control_end_threshold
    # When rebooting, the value in the file is reset to 100. The crontab is used to overwrite this change
    # Place the following line in your root crontab (REPLACE username with your username):
    # @reboot echo $(cat /home/username/charge_control/.charge_control_end_threshold) | tee /sys/class/power_supply/BAT0/charge_control_end_threshold

    # Create a hidden file in the directory (This will be accessed by crontab when rebooting)
    echo -n 60 > .charge_control_end_threshold
fi

if [ "$ask" == "80%" ]; then
    echo 80 | sudo tee /sys/class/power_supply/BAT0/charge_control_end_threshold
    echo -n 80 > .charge_control_end_threshold
fi

if [ "$ask" == "100%" ]; then
    echo 100 | sudo tee /sys/class/power_supply/BAT0/charge_control_end_threshold
    echo -n 100 > .charge_control_end_threshold
fi
exit 0
