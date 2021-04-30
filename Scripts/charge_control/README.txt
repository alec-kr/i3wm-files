To run the script, open the terminal and type: 
sudo bash charge_control.sh

OR you can run make the script executable by running: 
chmod u+x charge_control.sh

It can then be run by typing: 
sudo ./charge_control.sh

This script is used to control the charging threshold on laptops.
The main directory should be placed in the user's home folder "~/charge_control/"

When rebooting the computer, the file in the /sys folder is overwritten with a default value.
To prevent this, the script will create a hidden file in this directory which will be used to store the value.
This value will then be copied into the folder, via the root crontab. This way, you can restart your computer,
and the charging threshold will not be affected.

To access the root crontab, run: 
sudo crontab -e

Place the following line in your root crontab (REPLACE username with your username):
@reboot echo $(cat /home/username/charge_control/.charge_control_end_threshold) | tee /sys/class/power_supply/BAT0/charge_control_end_threshold