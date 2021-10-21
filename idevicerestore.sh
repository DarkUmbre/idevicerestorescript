sudo apt update
# sudo apt upgrade
sudo apt install -y libcurl4-openssl-dev libplist-dev libzip-dev openssl libssl-dev libusb-1.0-0-dev libreadline-dev build-essential git make automake libtool pkg-config
git clone https://github.com/libimobiledevice/libimobiledevice-glue.git
git clone https://github.com/libimobiledevice/libirecovery
git clone https://github.com/libimobiledevice/idevicerestore
git clone https://github.com/libimobiledevice/usbmuxd
git clone https://github.com/libimobiledevice/libimobiledevice
git clone https://github.com/libimobiledevice/libusbmuxd
git clone https://github.com/libimobiledevice/libplist

user=$(whoami) cd /home/$(whoami)/libimobiledevice-glue && ./autogen.sh && sudo make install
user=$(whoami) cd /home/$(whoami)/libplist && ./autogen.sh --without-cython && sudo make install
user=$(whoami) cd /home/$(whoami)/libusbmuxd && ./autogen.sh && sudo make install 
user=$(whoami) cd /home/$(whoami)/usbmuxd && ./autogen.sh && sudo make install
user=$(whoami) cd /home/$(whoami)/libimobiledevice && ./autogen.sh --without-cython && sudo make install
user=$(whoami) cd /home/$(whoami)/libirecovery && ./autogen.sh && sudo make install
user=$(whoami) cd /home/$(whoami)/idevicerestore && ./autogen.sh && sudo make install
sudo ldconfig
sudo user=$(whoami) rm -rf /home/$(whoami)/libimobiledevice-glue
sudo user=$(whoami) rm -rf /home/$(whoami)/libplist
sudo user=$(whoami) rm -rf /home/$(whoami)/libusbmuxd
sudo user=$(whoami) rm -rf /home/$(whoami)/usbmuxd
sudo user=$(whoami) rm -rf /home/$(whoami)/libimobiledevice
sudo user=$(whoami) rm -rf /home/$(whoami)/libirecovery
sudo user=$(whoami) rm -rf /home/$(whoami)/idevicerestore
sudo user=$(whoami) rm -rf /home/$(whoami)/idevicerestore.sh
exit
