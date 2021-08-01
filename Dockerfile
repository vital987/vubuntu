FROM vital987/vubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive \
#VNC Server Password
	VNC_PASS="samplepass" \
#VNC Server Title(w/o spaces)
	VNC_TITLE="Vubuntu" \
#VNC Resolution(720p is preferable)
	VNC_RESOLUTION="1280x720" \
#NoVNC Port
	NOVNC_PORT=5900 \
#PORT
  PORT=80 \
#Locale
	LANG=en_US.UTF-8 \
	LANGUAGE=en_US.UTF-8 \
	LC_ALL=C.UTF-8 \
	TZ="Asia/Kolkata"
