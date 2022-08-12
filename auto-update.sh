#!/bin/bash
echo
while [ -n "$1" ]
do
case "$1" in

-code) echo "Starting update Visual Studio Code!"
sleep 5
wget 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64' -O /tmp/code_latest_amd64.deb
sudo dpkg -i /tmp/code_latest_amd64.deb
echo "The upgrade is complete!"
echo "Launch a new version!"
code;;

-zoom)  echo "Starting update Zoom!"
sleep 5
wget 'https://us05web.zoom.us/client/latest/zoom_amd64.deb' -O /tmp/zoom_amd64.deb
sudo dpkg -i /tmp/zoom_amd64.deb
echo "The upgrade is complete!"
echo "Launch a new version!";;

-skype) echo "Starting update Skype!"
sleep 5
wget 'https://go.skype.com/skypeforlinux-64.deb' -O /tmp/skypeforlinux-64.deb
sudo dpkg -i /tmp/skypeforlinux-64.deb
echo "The upgrade is complete!"
echo "Launch a new version!";;

*) echo "$1 is not an option" ;;
esac
shift
done