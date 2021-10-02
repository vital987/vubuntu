# Ubuntu with NoVNC/[PureVNC](https://github.com/vital987/vubuntu/tree/purevnc) (Direct VNC)

[![Ubuntu Version](https://img.shields.io/static/v1?label=Ubuntu&message=20.04&color=E95420&logo=ubuntu)](https://ubuntu.com) [![Maintainer](https://img.shields.io/static/v1?label=Maintainer&message=Vital987&color=1e90ff)](https://github.com/vital987) [![Maintainance](https://img.shields.io/badge/Maintenance%20Level-Active-success.svg)](https://github.com/vital987) [![Docker Pulls](https://img.shields.io/docker/pulls/vital987/vubuntu.svg)](https://hub.docker.com/r/vital987/vubuntu) [![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)]()<br>[![Heroku](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/vital987/vubuntu)<br>

## **Table of Contents :**
  * [**Packages**](#packages-)
  * [**Screenshots**](#screenshots-)
  * [**Environment Variables**](#environment-variables-)
  * [**Installation**](#installation-)
  * [**Warnings**](#warnings-)
## **Packages :** 
  * **Browsers :** 
    * [![Firefox](https://img.shields.io/static/v1?label=Firefox&message=%20&color=orange&logo=firefox-browser)]() [![Brave](https://img.shields.io/static/v1?label=Brave&message=%20&color=fa552a&logo=brave)]()
  * **Shells :**
    * [![Gnome Terminal](https://img.shields.io/static/v1?label=GnomeTerminal&message=%20&color=green&logo=gnome&logoColor=green)]() [![Terminator](https://img.shields.io/static/v1?label=Terminator&message=%20&color=red&logo=powershell&logoColor=red)]() [![PowerShell](https://img.shields.io/static/v1?label=PowerShell&message=%20&color=5391FE&logo=powershell&logoColor=5391FE)]()
  * **Coding :** 
    * [![VS Code](https://img.shields.io/static/v1?label=VS%20Code&message=%20&color=1e90ff&logo=visual-studio-code&logoColor=1e90ff)]()
  * **Text Editors :** 
    * [![G-Vim](https://img.shields.io/static/v1?label=G-Vim&message=%20&color=brightgreen&logo=vim&logoColor=brightgreen)]() [![Pluma](https://img.shields.io/static/v1?label=Pluma&message=%20&color=green&logo=textpattern&logoColor=green)]() [![Sublime](https://img.shields.io/static/v1?label=Sublime%20Text&message=%20&color=orange&logo=sublime-text&logoColor=orange)]()
  * **Office Suite :** 
    * [![LibreOffice](https://img.shields.io/static/v1?label=Libre%20Office&message=%20&color=brightgreen&logo=libreoffice&logoColor=brightgreen)]()
  * **Social Apps :** 
    * [![Telegram](https://img.shields.io/static/v1?label=Telegram&message=%20&color=26A5E4&logo=telegram&logoColor=26A5E4)]()
* **Utilities :**
    * [![File Manager](https://img.shields.io/static/v1?label=File%20Manager&message=%20&color=EFF700&logo=files&logoColor=EFF700)]() [![Calculator](https://img.shields.io/static/v1?label=Calculator&message=%20&color=017A79&logo=craft-cms&logoColor=017A79)]() [![System Monitor](https://img.shields.io/static/v1?label=System%20Monitor&message=%20&color=111324&logo=campaign-monitor&logoColor=111324)]() [![PeaZip](https://img.shields.io/static/v1?label=Ngrok&message=%20&color=1853DB&logo=ngrok&logoColor=1853DB)]() [![PeaZip](https://img.shields.io/static/v1?label=PeaZip&message=%20&color=6300F7&logo=git-lfs&logoColor=6300F7)]()
* **Languages Installed [\* = Optional, can enable from Dockerfile]:** 
    * [![C](https://img.shields.io/static/v1?label=C&message=%20&logo=c)]() [![C++](https://img.shields.io/static/v1?label=C%2b%2b&message=%20&logo=c%2b%2b&logoColor=1e90ff&color=1e90ff)]() [![C Sharp(optional)](https://img.shields.io/static/v1?label=*C%23&message=%20&logo=c-sharp&logoColor=green&color=green)]() [![Clojure(optional)](https://img.shields.io/static/v1?label=*Clojure&message=%20&logo=clojure&logoColor=brightgreen&color=brightgreen)]() [![Go](https://img.shields.io/static/v1?label=Go&message=%20&logo=go&logoColor=1e90ff&color=1e90ff)]() [![Java](https://img.shields.io/static/v1?label=Java&message=%20&logo=java&logoColor=f89820&color=f89820)]() [![Lua(optional)](https://img.shields.io/static/v1?label=*Lua&message=%20&color=blueviolet&logo=lua&logoColor=9638E7)]() [![R(optional)](https://img.shields.io/static/v1?label=*R&message=%20&logo=r&logoColor=blue&color=blue)]()  [![Ruby](https://img.shields.io/static/v1?label=Ruby&message=%20&logo=ruby&logoColor=9b111e&color=9b111e)]() [![Perl(optional)](https://img.shields.io/static/v1?label=*Perl&message=%20&logo=perl&logoColor=cc99ff&color=cc99ff)]() [![Python](https://img.shields.io/static/v1?label=Python&message=%20&logo=python&color=blue)]()

## **Screenshots :**
<div>
  <details open>
  <summary>Laptop/Desktop</summary>
  <img src="https://raw.githubusercontent.com/vital987/vubuntu/master/assets/screenshots/desktop_ss1.png" align="center" width=900 height=500><br><br>
  <img src="https://raw.githubusercontent.com/vital987/vubuntu/master/assets/screenshots/desktop_ss2.png" align="center" width=900 height=500><br><br>
 </details>
 <details>
  <summary>Smartphone/Tablet</summary>
  <img src="https://raw.githubusercontent.com/vital987/vubuntu/master/assets/screenshots/phone_ss1.png" align="center" width=900 height=500><br><br>
  <img src="https://raw.githubusercontent.com/vital987/vubuntu/master/assets/screenshots/phone_ss2.png" align="center" width=900 height=500><br><br>
 </details>
</div>
  
## **Environment Variables :**

| VNC_PASS | VNC Server Password |
|:-:|:-:|
| VNC_TITLE | VNC Session Title |
| VNC_RESOLUTION | VNC Server Resolution |
| VNC_SHARED | VNC Shared Mode |
| DISPLAY | Display Server Port |
| PORT | NoVNC HTTP Port |
| NGROK_AUTH_TOKEN | Ngrok Token |
| NO_SLEEP | Prevent Heroku app from sleeping, disabled by default |
| APP_NAME | Name of Heroku app |

## **Installation :**
 * Heroku Users :
   * Click on [Deploy Now](https://heroku.com/deploy?template=https://github.com/vubuntu) button.
   * Set the app name & variables.
   * Deploy.
 * Manual Method :
   * Edit & Run Command :
     ```
     docker run --name vubuntu \
     -e VNC_PASS="samplepass" \
     -e VNC_TITLE="Vubuntu" \
     -e VNC_RESOLUTION="1280x720" \
     -e DISPLAY=:0 \
     -e PORT=9870 \
     -d -p 8080:9870 \
     vital987/vubuntu:latest
     ```  
## **Warnings :**
  * [ ! ] **VNC_TITLE & VNC_PASS values should be without spaces.**
  * [ ! ] **The whole project runs as a root user in a docker container.**
  * [ ! ] **Using VNC/Remote Desktops are strictly prohibited/banned on many free platforms.**
  * [ ! ] **Deploy/Use at your own risk & responsibility!**

