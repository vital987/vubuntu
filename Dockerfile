#Dockerfile for Railway
FROM vital987/vubuntu:latest
ENV DISPLAY=:0 \
	VNC_PASS="samplepass" \
	VNC_TITLE="Vubuntu_Desktop" \
	VNC_RESOLUTION="1280x720" \
	NOVNC_PORT="5900" \
	PORT="80" \
	LANG=en_US.UTF-8 \
	LANGUAGE=en_US.UTF-8 \
	LC_ALL=C.UTF-8 \
	TZ="Asia/Kolkata"
