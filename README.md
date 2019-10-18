Prepare
=======
* Install fresh raspbian with Desktop (normal/full)
* Start RPI and configure it (language, screen-dimensions, ...)
* If you plan to work offline, you need to install some software before you proceed: 'sudo apt-get install x11-xserver-utils feh'

Installation from USB drive
===========================
* Copy all files to USB drive and connect it to RPI
* Open a terminal and cd to the USB drive
* Run 'bash setup.sh' and follow the on-screen instructions
* Remove the USB drive and Reboot

Installation with GIT
=====================
* Open a terminal
* Run 'sudo apt-get install git'
* Run 'git clone https://github.com/DaSpors/rpi-slideshow.git'
* Run 'cd rpi-slideshow'
* Run 'bash setup.sh'

Image Update
============
* Create a FAT32 fomrmatted USB drive and name in 'IMAGES' (case matters!)
* Copy images into the USB drive root folder.
* Plug the USB drive into RPI running slideshow
* Now slideshow will be teminated and dektop is shown, ignore everything you see and just wait
* Wait longer as all files are copied to the RPI SD card
* Wait until RPI reboots, when it does remove the USB drive (while it boots!)
