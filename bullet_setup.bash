#!/bin/bash
# This script automatically installs bullet from the tar file included
# Also it sets up the paths needed
tar -xf bullet-2.81-rev2613.tgz #Unzip the bullet folder
cd bullet-2.81-rev2613
sh autogen.sh # Generate the configure script
./configure --enable-shared --prefix=/usr  #Use the /usr folder for installing include folders etc
make -j `nproc` && sudo make install  # Make and install
#Bullet Installation done
