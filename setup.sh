#!/bin/bash
sudo apt-get install x11-xserver-utils feh zenity
sudo sed -i 's/#xserver-command=X/xserver-command=X -s 0 dpms/g' /etc/lightdm/lightdm.conf

cp slideshow.sh /home/pi/
cp refresh.sh /home/pi/
cp -r .config/* /home/pi/.config/
cp -r img /home/pi/
chmod a+x /home/pi/slideshow.sh
chmod a+x /home/pi/refresh.sh
