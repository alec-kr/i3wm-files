# 🔋Charge Control🔋
This is a script I wrote to control the charging threshold on laptops. 

❗⚠️ This has only been tested on an ROG STRIX G731GU running Ubuntu 20.04 ⚠️❗

## Dependencies
The script uses ```zenity```, which enables you to display dialog boxes from the commandline and shell scripts. 

To install this, copy, paste and run the following: 

```sudo apt install zenity```

[Zenity Documentation](https://help.gnome.org/users/zenity/)

## Installation
The main directory should be placed in the user's home folder ```"~/charge_control/"```

### Setting up the crontab
When rebooting the computer, the file in the ```/sys``` folder is overwritten with a default value.
To prevent this, the script will use create a file in this directory to store the value.
This value will then be copied into the ```/sys``` folder, via the root crontab. This way, you can restart your computer,
and the charging threshold will not be affected.

To access the root crontab, run: 

```sudo crontab -e```

Place the following line in your root crontab (**Replace username with your username**):

```@reboot echo $(cat /home/username/charge_control/.charge_control_end_threshold) | tee /sys/class/power_supply/BAT0/charge_control_end_threshold```

### Finishing up
Make the script executable by running: 

```chmod u+x charge_control.sh```

It can then be executed at any time by typing:

```sudo ./charge_control.sh```

## Usage
After executing the instructions and code above, you need to select the desired charging threshold, and click "OK".

![Screenshot of Program Running](https://i.imgur.com/5QeYUAY.png)
