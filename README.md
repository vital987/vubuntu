# **Ubuntu Fluxbox with NoVNC**
[![Ubuntu Version](https://img.shields.io/static/v1?label=Ubuntu&message=20.04&color=E95420&logo=ubuntu)]() [![Maintainer](https://img.shields.io/static/v1?label=Maintainer&message=apoorvvyavahare@pm.me&color=1e90ff)]() [![Inactively Maintained](https://img.shields.io/badge/Maintenance%20Level-Inactively%20Maintained-yellowgreen.svg)]() [![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)]()

### **Packages :** 
  * **Browsers :** 
    * [![Firefox](https://img.shields.io/static/v1?label=Firefox&message=%20&color=orange&logo=firefox-browser)]() [![Brave](https://img.shields.io/static/v1?label=Brave&message=%20&color=fa552a&logo=brave)]()
  * **Shells :**
    * [![Gnome Terminal](https://img.shields.io/static/v1?label=GnomeTerminal&message=%20&color=green&logo=gnome&logoColor=green)]() [![Terminator](https://img.shields.io/static/v1?label=Terminator&message=%20&color=red&logo=powershell&logoColor=red)]()
  * **Coding :** 
    * [![VS Code](https://img.shields.io/static/v1?label=VS%20Code&message=%20&color=1e90ff&logo=visual-studio-code&logoColor=1e90ff)]()
  * **Text Editors :** 
    * [![G-Vim](https://img.shields.io/static/v1?label=G-Vim&message=%20&color=brightgreen&logo=vim&logoColor=brightgreen)]() [![G-Edit](https://img.shields.io/static/v1?label=G-Edit&message=%20&color=green&logo=textpattern&logoColor=green)]() [![Sublime](https://img.shields.io/static/v1?label=Sublime%20Text&message=%20&color=orange&logo=sublime-text&logoColor=orange)]()
  * **Office Suite :** 
    * [![LibreOffice](https://img.shields.io/static/v1?label=Libre%20Office&message=%20&color=brightgreen&logo=libreoffice&logoColor=brightgreen)]()
  * **Utilities :**
    * [![File Manager](https://img.shields.io/static/v1?label=File%20Manager&message=%20&color=EFF700&logo=files&logoColor=EFF700)]() [![TeamViewer](https://img.shields.io/static/v1?label=TeamViewer&message=%20&color=1e90ff&logo=teamviewer&logoColor=1e90ff)]() [![Calculator](https://img.shields.io/static/v1?label=Calculator&message=%20&color=017A79&logo=craft-cms&logoColor=017A79)]() [![System Monitor](https://img.shields.io/static/v1?label=System%20Monitor&message=%20&color=111324&logo=campaign-monitor&logoColor=111324)]() [![PeaZip](https://img.shields.io/static/v1?label=PeaZip&message=%20&color=6300F7&logo=git-lfs&logoColor=6300F7)]()
  * **Languages Installed :** 
    * [![C](https://img.shields.io/static/v1?label=C&message=%20&logo=c)]() [![C++](https://img.shields.io/static/v1?label=C%2b%2b&message=%20&logo=c%2b%2b&logoColor=1e90ff&color=1e90ff)]() [![C Sharp](https://img.shields.io/static/v1?label=C%23&message=%20&logo=c-sharp&logoColor=green&color=green)]() [![Clojure](https://img.shields.io/static/v1?label=Clojure&message=%20&logo=clojure&logoColor=brightgreen&color=brightgreen)]() [![Go](https://img.shields.io/static/v1?label=Go&message=%20&logo=go&logoColor=1e90ff&color=1e90ff)]() [![Java](https://img.shields.io/static/v1?label=Java&message=%20&logo=java&logoColor=f89820&color=f89820)]() [![Lua](https://img.shields.io/static/v1?label=Lua&message=%20&color=blueviolet&logo=lua&logoColor=9638E7)]() [![R](https://img.shields.io/static/v1?label=R&message=%20&logo=r&logoColor=blue&color=blue)]()  [![Ruby](https://img.shields.io/static/v1?label=Ruby&message=%20&logo=ruby&logoColor=9b111e&color=9b111e)]() [![Perl](https://img.shields.io/static/v1?label=Perl&message=%20&logo=perl&logoColor=cc99ff&color=cc99ff)]() [![Python](https://img.shields.io/static/v1?label=Python&message=%20&logo=python&color=blue)]()
### **Environment Variables :**
          ---------------------------------------------
          |    VNC_PASS    |    VNC Server Password   |
          |    VNC_TITLE   |     VNC Session Title    |
          | VNC_RESOLUTION |   VNC Remote Resolution  |
          |     DISPLAY    |    Local Display Port    |
          |      PORT      |      NoVNC HTTP Port     |
          |   NGROK_TOKEN  | Ngrok Port Forward Token |
          ---------------------------------------------
### **Installation :**
 * Heroku Users :
   * Fork this repo.
   * Set values for environment variables in Dockerfile (before build), do not set $PORT variable.
   * Connect your Heroku account to github via Heroku Dashboard.
   * Search for **vubuntu** in github repo field, connect to it.
   * Hit the **Deploy Now** Button.
 * Non-Heroku Useers :
   * Clone this repo.
   * Set values for environment variables in Dockerfile.
   * Build the image: 
     * ```docker build --tag vubuntu:20.04 .```
   * Create container from the image and run it in detached mode: 
     * ```docker run --name vubuntu -d -p <HOST-PORT>:<VALUE OF $NOVNC_PORT> vubuntu:20.04```
### **Warnings :**
  * [ ! ] $VNC_TITLE value should be without spaces.
  * [ ! ] The whole project runs as a root user in a docker container!
  * [ ! ] 3rd Party Softwares dosen't work with DE on Heroku(Free Plan) due to low memory.
### **Desktop Environments :**
#### * **MATE :**
  * Comment line #69 from Dockerfile
  * Uncomment line #71, #72, #73 from Dockerfile
  * Delete file ***conf.d/4-fluxbox.conf***
  * Copy the file ***extras/4-mate.conf*** to ***conf.d/***
        
#### * **XFCE :**
  * Comment line #69 from Dockerfile
  * Uncomment line #75, #76 from Dockerfile
  * Delete file ***conf.d/4-fluxbox.conf***
  * Copy the file ***extras/4-xfce.conf*** to ***conf.d/***
        
