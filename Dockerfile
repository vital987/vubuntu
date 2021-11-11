FROM vital987/vubuntu:latest

LABEL Maintainer "Apoorv Vyavahare <apoorvvyavahare@pm.me>"

ARG DEBIAN_FRONTEND=noninteractive

#VNC Server Password
ENV	VNC_PASS="samplepass" \
#VNC Server Title(w/o spaces)
	VNC_TITLE="Vubuntu-PureVNC" \
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
	NGROK_PORT=5900 \
	NGROK_REGION="in"

SHELL ["/bin/bash", "-c"]

RUN	apt-get update && \
	apt-get install --no-install-recommends -y socat && \
	apt-get purge -y novnc && \
	npm uninstall --global websockify && \
	rm -rf /app/.vubuntu/assets/configs/* && \
	rm -rf /var/lib/apt/lists/* && \
	apt-get clean && \
	apt-get autoremove -y && \
	rm -rf /tmp/* && \
	pip install pyngrok PyYAML && \
	python3 -c 'from pyngrok import installer;installer.install_ngrok(ngrok_path="/usr/local/lib/python3.8/dist-packages/pyngrok/bin/ngrok")'

COPY assets/configs/ /app/.vubuntu/assets/configs/

