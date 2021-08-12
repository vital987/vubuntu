FROM vital987/supervisor:ubuntu20.04

LABEL AboutImage "Ubuntu20.04_Fluxbox_PureVNC"

LABEL Maintainer "Apoorv Vyavahare <apoorvvyavahare@pm.me>"

ARG DEBIAN_FRONTEND=noninteractive

ENV DEBIAN_FRONTEND=noninteractive \
#VNC Server Password
	VNC_PASS="samplepass" \
#VNC Server Title(w/o spaces)
	VNC_TITLE="Vubuntu_Desktop" \
#VNC Resolution(720p is preferable)
	VNC_RESOLUTION="1280x720" \
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

COPY . /app
COPY conf.d/*.conf /config/supervisor/
COPY conf.d/*.py /config/
RUN rm -rf /etc/apt/sources.list && \
#All Official Focal Repos
	bash -c 'echo -e "deb http://archive.ubuntu.com/ubuntu/ focal main restricted universe multiverse\ndeb-src http://archive.ubuntu.com/ubuntu/ focal main restricted universe multiverse\ndeb http://archive.ubuntu.com/ubuntu/ focal-updates main restricted universe multiverse\ndeb-src http://archive.ubuntu.com/ubuntu/ focal-updates main restricted universe multiverse\ndeb http://archive.ubuntu.com/ubuntu/ focal-security main restricted universe multiverse\ndeb-src http://archive.ubuntu.com/ubuntu/ focal-security main restricted universe multiverse\ndeb http://archive.ubuntu.com/ubuntu/ focal-backports main restricted universe multiverse\ndeb-src http://archive.ubuntu.com/ubuntu/ focal-backports main restricted universe multiverse\ndeb http://archive.canonical.com/ubuntu focal partner\ndeb-src http://archive.canonical.com/ubuntu focal partner" >/etc/apt/sources.list' && \
	rm /bin/sh && ln -s /bin/bash /bin/sh && \
	apt-get update && \
	apt-get install -y \
#Packages Installation
	tzdata \
	software-properties-common \
	apt-transport-https \
	wget \
	git \
	curl \
	vim \
	zip \
	socat \
	sudo \
	net-tools \
	iputils-ping \
	build-essential \
	python3 \
	python3-pip \
	python-is-python3 \
	#perl \
	#ruby \
	#golang \
	#lua5.3 \
	#scala \
	#mono-complete \
	#r-base \
	#default-jre \
	#default-jdk \
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
	x11vnc \
	xvfb \
	gnupg \
	dirmngr \
	gdebi-core \
	nginx \
	ffmpeg \
	pluma \
#Fluxbox
	/app/fluxbox-mod.deb && \
#PyNgrok
	pip3 install pyngrok && \
#TimeZone
	ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
	echo $TZ > /etc/timezone && \
#VS Code
	wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg && \
	install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/ && \
	sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list' && \
	rm -f packages.microsoft.gpg && \
	apt install apt-transport-https && \
	apt update && \
	apt install code -y && \
	cd /usr/bin && \
#Brave
	curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg && \
	echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|tee /etc/apt/sources.list.d/brave-browser-release.list && \
	apt update && \
	apt install brave-browser -y && \
#PeaZip
	wget https://github.com/peazip/PeaZip/releases/download/7.9.0/peazip_7.9.0.LINUX.x86_64.GTK2.deb && \
	dpkg -i peazip_7.9.0.LINUX.x86_64.GTK2.deb && \
	rm -rf peazip_7.9.0.LINUX.x86_64.GTK2.deb && \
#Sublime
	curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add - && \
	add-apt-repository "deb https://download.sublimetext.com/ apt/stable/" && \
	apt install -y sublime-text && \
#Telegram
	wget https://updates.tdesktop.com/tlinux/tsetup.2.7.4.tar.xz -P /tmp && \
	tar -xvf /tmp/tsetup.2.7.4.tar.xz -C /tmp && \
	mv /tmp/Telegram/Telegram /usr/bin/telegram && \
#PowerShell
	wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -P /tmp && \
	apt install -y /tmp/packages-microsoft-prod.deb && \
	apt update && \
	apt-get install -y powershell
