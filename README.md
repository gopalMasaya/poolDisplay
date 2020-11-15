# 
steps for automation of raspberry pi

1 open text file on desktop 
  name: autoRun.sh
  
  #!/bin/sh
  sudo ...path
  
  2 change premission to everyone
  
  3 open terminal
  4 sudo nano /etc/profile
  
  5 go to the buttom of the file add the shell script path+&
  
  disable screen saver
  sudo apt-install xscreensaver
  
  name: serial port  /dev/ttyACM0
  
  Creating Udevrule
  
   goto:  https://www.pjrc.com/teensy/49-teensy.rules
  or:
 1 download arduino IDE
 2 cd then ./install.sh
 3 git clone https://github.com/cmcmurrough/cse2100
 4 cd cse2100
 5 cd teensy
 6 sudo sh install install_teensyduino.sh
 
 
  
