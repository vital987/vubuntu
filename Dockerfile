FROM ubuntu:20.04

LABEL AboutImage "Ubuntu20.04_Fluxbox_NoVNC"

LABEL Maintainer "Apoorv Vyavahare <apoorvvyavahare@pm.me>"

ARG DEBIAN_FRONTEND=noninteractive

#VNC Server Password
ENV	VNC_PASS="samplepass" \
#VNC Server Title(w/o spaces)
	VNC_TITLE="Vubuntu_Desktop" \
#VNC Resolution(720p is preferable)
	VNC_RESOLUTION="1280x720" \
#VNC Shared Mode (0=off, 1=on)
	VNC_SHARED=0 \
#Local Display Server Port
	DISPLAY=:0 \
#NoVNC Port
	NOVNC_PORT=$PORT \
#Ngrok Token (Strictly use private token if using the service)
	NGROK_AUTH_TOKEN="1xM4IHjFpX4CwPYr82zZJH9ZjYQ_5kmfqfXit97FkTYSGUrZJ" \
#Locale
	LANG=en_US.UTF-8 \
	LANGUAGE=en_US.UTF-8 \
	LC_ALL=C.UTF-8 \
	TZ="Asia/Kolkata"

COPY . /app/.vubuntu

SHELL ["/bin/bash", "-c"]

RUN rm -f /etc/apt/sources.list && \
#All Official Focal Repos
	bash -c 'echo -e "deb http://archive.ubuntu.com/ubuntu/ focal main restricted universe multiverse\ndeb-src http://archive.ubuntu.com/ubuntu/ focal main restricted universe multiverse\ndeb http://archive.ubuntu.com/ubuntu/ focal-updates main restricted universe multiverse\ndeb-src http://archive.ubuntu.com/ubuntu/ focal-updates main restricted universe multiverse\ndeb http://archive.ubuntu.com/ubuntu/ focal-security main restricted universe multiverse\ndeb-src http://archive.ubuntu.com/ubuntu/ focal-security main restricted universe multiverse\ndeb http://archive.ubuntu.com/ubuntu/ focal-backports main restricted universe multiverse\ndeb-src http://archive.ubuntu.com/ubuntu/ focal-backports main restricted universe multiverse\ndeb http://archive.canonical.com/ubuntu focal partner\ndeb-src http://archive.canonical.com/ubuntu focal partner" >/etc/apt/sources.list' && \
	apt-get update && \
	apt-get install -y \
#Packages Installation
	tzdata \
	software-properties-common \
	apt-transport-https \
	wget \
	htop \
	git \
	curl \
	vim \
	zip \
	sudo \
	net-tools \
	iputils-ping \
	build-essential \
	python3 \
	python3-pip \
	python-is-python3 \
	#perl \
	#ruby \
	golang \
	#lua5.3 \
	#scala \
	#mono-complete \
	#r-base \
	default-jre \
	default-jdk \
	#clojure \
	#php \
	nodejs \
	npm \
	firefox \
	gnome-terminal \
	gnome-calculator \
	gnome-system-monitor \
	gedit \
	vim-gtk3 \
	mousepad \
	libreoffice \
	pcmanfm \
	terminator \
	supervisor \
	x11vnc \
	xvfb \
	gnupg \
	dirmngr \
	gdebi-core \
	nginx \
	openvpn \
	ffmpeg \
	pluma && \
#Fluxbox
	apt-get install -y /app/.vubuntu/assets/packages/fluxbox.deb && \
#noVNC
	apt-get install -y /app/.vubuntu/assets/packages/novnc.deb && \
	cp /usr/share/novnc/vnc.html /usr/share/novnc/index.html && \
        openssl req -new -newkey rsa:4096 -days 36500 -nodes -x509 -subj "/C=IN/ST=Maharastra/L=Private/O=Dis/CN=www.google.com" -keyout /etc/ssl/novnc.key  -out /etc/ssl/novnc.cert && \
#Websockify
	npm i websockify && \
#MATE Desktop
	#apt-get install -y \ 
	#ubuntu-mate-core \
	#ubuntu-mate-desktop && \
#XFCE Desktop
	#apt-get install -y \
	#xubuntu-desktop && \
#TimeZone
	ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
	echo $TZ > /etc/timezone && \
#VS Code
	wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg && \
	install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/ && \
	echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list && \
	rm -f packages.microsoft.gpg && \
	apt-get update && \
	apt-get install code -y && \
#Brave
	curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg && \
	echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|tee /etc/apt/sources.list.d/brave-browser-release.list && \
	apt-get update && \
	apt-get install brave-browser -y && \
#PeaZip
	wget https://github.com/peazip/PeaZip/releases/download/8.1.0/peazip_8.1.0.LINUX.x86_64.GTK2.deb -P /tmp && \
	apt-get install -y /tmp/peazip_8.1.0.LINUX.x86_64.GTK2.deb && \
#Sublime
	curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add - && \
	add-apt-repository "deb https://download.sublimetext.com/ apt/stable/" && \
	apt-get install -y sublime-text && \
#Telegram
	wget https://updates.tdesktop.com/tlinux/tsetup.2.9.2.tar.xz -P /tmp && \
	tar -xvf /tmp/tsetup.2.9.2.tar.xz -C /tmp && \
	mv /tmp/Telegram/Telegram /usr/bin/telegram && \
#PowerShell
	wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -P /tmp && \
	apt-get install -y /tmp/packages-microsoft-prod.deb && \
	apt-get update && \
	apt-get install -y powershell && \
#Ngrok
	wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -P /tmp && \
	unzip /tmp/ngrok-stable-linux-amd64.zip -d /usr/bin && \
	ngrok authtoken $NGROK_AUTH_TOKEN && \
#Wipe Temp Files
	rm -rf /var/lib/apt/lists/* && \ 
	apt-get clean && \
	rm -rf /tmp/*

ENTRYPOINT ["supervisord", "-l", "/app/.vubuntu/supervisord.log", "-c"]

CMD ["/app/.vubuntu/assets/configs/supervisordconf"]
