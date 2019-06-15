#!/bin/bash
iqconnect_exe="/root/.wine/drive_c/Program Files/DTN/IQFeed/iqconnect.exe"
if [ -f "$iqconnect_exe" ]
then
	echo "$iqconnect_exe found. launching iqfeed client"
  /usr/bin/wine /root/.wine/drive_c/Program\ Files/DTN/IQFeed/iqconnect.exe -autoconnect
else
	echo "$iqconnect_exe not found. launcing iqfeed client installer"
  /usr/bin/wine /root/iqfeed_client_6_0_1_1.exe
fi
