FROM vital987/vubuntu:latest

LABEL AboutImage "Ubuntu20.04_Fluxbox_PureVNC"

LABEL Maintainer "Apoorv Vyavahare <apoorvvyavahare@pm.me>"

ARG DEBIAN_FRONTEND=noninteractive

#VNC Server Password
ENV	VNC_PASS="samplepass" \
#VNC Server Title(w/o spaces)
	VNC_TITLE="Vubuntu_Desktop" \
#VNC Resolution(720p is preferable)
	VNC_RESOLUTION="1280x720" \
#VNC Shared Mode (0=no, 1=yes)
	VNC_SHARED=0 \
#Local Display Server Port
	DISPLAY=:0 \
#Locale
	LANG=en_US.UTF-8 \
	LANGUAGE=en_US.UTF-8 \
	LC_ALL=C.UTF-8 \
	TZ="Asia/Kolkata" \
#Ngrok Specific
	NGROK_BINDTLS=1 \
	NGROK_METHOD=tcp \
	NGROK_PORT=5900

SHELL ["/bin/bash", "-c"]

RUN	apt update && \
	apt install --no-install-recommends -y socat && \
	apt purge -y novnc && \
	npm uninstall --global websockify && \
	pip install pyngrok && \
	rm -rf /app/.vubuntu/assets/configs/*

COPY assets/configs/ /app/.vubuntu/assets/configs/

