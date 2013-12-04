sudo mkdir /tmp/wm3/
cd /tmp/wm3/
sudo wget http://wifimetropolis.ozyart.tk/Wifi%20Metropolis%203.tar.gz -N
sudo tar -xzvf 'Wifi Metropolis 3.tar.gz' -C /tmp/wm3/
sudo rm 'Wifi Metropolis 3.tar.gz' -R
sudo killall gbr3
sudo sh install.sh
exit

