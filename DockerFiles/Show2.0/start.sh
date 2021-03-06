#setting up vncserver
if [[ -e /tmp/.X0-lock && -e /tmp/.X11-unix/X0 ]]; then
	rm -f /tmp/.X0-lock /tmp/.X11-unix/X0
fi

if [[ -e /home/ubuntu/.vnc/*.pid && -e /home/ubuntu/.vnc/*.log ]]; then
	rm -f /home/ubuntu/.vnc/*.pid /home/ubuntu/.vnc/*.log
fi

# run 
service ssh start
ldconfig
su ubuntu sh -c 'vncserver :0 && tail -f /home/ubuntu/.vnc/*.log'
