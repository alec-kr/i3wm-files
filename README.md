# LinuxStuff
This repository contains scripts and configurations for my Linux system. (Ubuntu 20.04 LTS)

## Packages Needed
* i3wm 
    * i3-radius 
    * i3-gaps
* Kitty Terminal
    * Starship.rs
* Polybar
* Rofi
* Flameshot
* ImageMagick
* xbacklight
* Compton
* pulseaudio
* Vim
    * NERDTree
    * lightline

## Installing the packages
`sudo apt install i3 kitty polybar rofi flameshot imagemagick xbacklight compton pulseaudio vim`

Starship.rs needs to be installed from the Snap Store `sudo snap install starship`

### i3-gaps
See installation guide here: [i3-gaps Installation Guide](https://gist.github.com/boreycutts/6417980039760d9d9dac0dd2148d4783)

### i3-radius
Follow the guide here: [i3-gaps Installation Guide](https://en.terminalroot.com.br/how-to-install-i3-gaps-with-rounded-corners/)

### Vim Plugins
* NERDTree:  [NERDTree Installation](https://github.com/preservim/nerdtree)
* lightline.vim:  [lightline Installation](https://github.com/itchyny/lightline.vim)

# Extras
The **Extras** folder contains a few scripts that are not directly related to my i3wm configuration.

`brightness.sh` - This is a script used to reset the screen brightness if you have accidentally set it to 0. (The config allows you to map brightness controls to F7 and F8 so you shouldn't have to worry about this).

`charge_control` - A Python3 widget I made to set the charging threshold on laptops. (Only tested on an ROG G731GU Laptop running Ubuntu 20.04 LTS)

`rog_charge_control_py` - The actual Python3 file for the above widget

`widget_charge_control` - Adds a widget to the Gnome3 bar to set the charging threshold

`wastemem.c` - A program written by Jerry Cooperstein to defrag memory