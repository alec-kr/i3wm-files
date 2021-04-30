# i3-rice
This repository contains scripts and configurations for my Linux system.

![Screenshot of my Linux setup](https://i.imgur.com/7YtFlH2.jpg)

## Distribution Specificications:

* Distribution: Ubuntu 20.04 focal
* Shell: bash 5.0.17
* Terminal: Kitty
* WM: i3
* GTK Theme: Adwaita-dark [GTK2/3]
* Icon Theme: breeze-dark
* Font: Noto Sans, 10

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
To install the packages, copy and paste:

`sudo apt install i3 kitty polybar rofi flameshot imagemagick xbacklight compton pulseaudio vim`

Starship.rs needs to be installed from the Snap Store with:

`sudo snap install starship`

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

`charge_control` - A script I made to control the charging threshold on my laptop. 

❗⚠️Only tested on an ROG G731GU Laptop running Ubuntu 20.04 focal⚠️❗

`rog_charge_control_py` - A Python3 implementation of the above charging threshold project using PyQt. NOTE: This lacks features included in the above project.

`wastemem.c` - A program written by Jerry Cooperstein to defrag memory
