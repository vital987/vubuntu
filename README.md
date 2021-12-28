# VNC + Ubuntu = Vubuntu ¯\\_\(ツ\)\_\/¯

[![Ubuntu Version](https://img.shields.io/static/v1?label=Ubuntu&message=20.04&color=E95420&logo=ubuntu)](https://ubuntu.com) [![Maintainer](https://img.shields.io/static/v1?label=Maintainer&message=Vital987&color=1e90ff)](https://github.com/vital987) [![Maintainance](https://img.shields.io/badge/Maintenance%20Level-Active-success.svg)](https://github.com/vital987) [![Docker Pulls](https://img.shields.io/docker/pulls/vital987/vubuntu.svg)](https://hub.docker.com/r/vital987/vubuntu) [![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)]()<br>

## **Table of Contents :**
  * [**Available Options**](#available-options-)
  * [**Packages**](#packages-)
  * [**Screenshots**](#screenshots-)
  * [**Environment Variables**](#environment-variables-)
  * [**Installation**](#installation-)
  * [**Warnings**](#warnings-)

## **Available Options :**
  * **[Latest](https://github.com/vital987/vubuntu/):** Full version of vubuntu with utilities, additional installed languages (Java & Go) & optional packages.
  * **[Minimal](https://github.com/vital987/vubuntu/tree/minimal):** Minimal version with only required packages, see next section for more info.
  * **[PureVNC](https://github.com/vital987/vubuntu/tree/purevnc):** Full, direct VNC access without noVNC.
  * **[PureVNC-Minimal](https://github.com/vital987/vubuntu/tree/purevnc):** Minimal, direct VNC access without noVNC.

## **Packages :** 
  * •: Available in minimal version 
  * **Browsers :** 
    * [![Firefox](https://img.shields.io/static/v1?label=Firefox&message=%20&color=orange&logo=firefox-browser)]() [![Brave](https://img.shields.io/static/v1?label=Brave&message=•&color=fa552a&logo=brave)]()
  * **Shells :**
    * [![Gnome Terminal](https://img.shields.io/static/v1?label=GnomeTerminal&message=%20&color=green&logo=gnome&logoColor=green)]() [![Terminator](https://img.shields.io/static/v1?label=Terminator&message=•&color=red&logo=powershell&logoColor=red)]() [![PowerShell](https://img.shields.io/static/v1?label=PowerShell&message=%20&color=5391FE&logo=powershell&logoColor=5391FE)]()
  * **Coding :** 
    * [![VS Code](https://img.shields.io/static/v1?label=VS%20Code&message=•&color=1e90ff&logo=visual-studio-code&logoColor=1e90ff)]()
  * **Text Editors :** 
    * [![G-Vim](https://img.shields.io/static/v1?label=G-Vim&message=%20&color=brightgreen&logo=vim&logoColor=brightgreen)]() [![Pluma](https://img.shields.io/static/v1?label=Pluma&message=•&color=green&logo=textpattern&logoColor=green)]() [![Sublime](https://img.shields.io/static/v1?label=Sublime%20Text&message=%20&color=orange&logo=sublime-text&logoColor=orange)]()
  * **Office Suite :** 
    * [![LibreOffice](https://img.shields.io/static/v1?label=Libre%20Office&message=%20&color=brightgreen&logo=libreoffice&logoColor=brightgreen)]()
  * **Social Apps :** 
    * [![Telegram](https://img.shields.io/static/v1?label=Telegram&message=•&color=26A5E4&logo=telegram&logoColor=26A5E4)]()
* **Utilities :**
    * [![File Manager](https://img.shields.io/static/v1?label=File%20Manager&message=•&color=EFF700&logo=files&logoColor=EFF700)]() [![Calculator](https://img.shields.io/static/v1?label=Calculator&message=%20&color=017A79&logo=craft-cms&logoColor=017A79)]() [![System Monitor](https://img.shields.io/static/v1?label=System%20Monitor&message=%20&color=111324&logo=campaign-monitor&logoColor=111324)]() [![Ngrok](https://img.shields.io/static/v1?label=Ngrok&message=•&color=1853DB&logo=ngrok&logoColor=1853DB)]() [![PeaZip](https://img.shields.io/static/v1?label=PeaZip&message=•&color=6300F7&logo=git-lfs&logoColor=6300F7)]()
* **Languages Installed:** 
    * [![C](https://img.shields.io/static/v1?label=C&message=•&logo=c)]() [![C++](https://img.shields.io/static/v1?label=C%2b%2b&message=•&logo=c%2b%2b&logoColor=1e90ff&color=1e90ff)]() [![Go](https://img.shields.io/static/v1?label=Go&message=%20&logo=go&logoColor=1e90ff&color=1e90ff)]() [![Java](https://img.shields.io/static/v1?label=Java&message=%20&logo=java&logoColor=f89820&color=f89820)]() [![Python](https://img.shields.io/static/v1?label=Python&message=•&logo=python&color=blue)]()

## **Screenshots :**
<div>
  <details open>
  <summary>Laptop/Desktop</summary>
  <img src="https://raw.githubusercontent.com/vital987/vubuntu/master/assets/screenshots/desktop_ss1.png" align="center" width=450 height=250>&nbsp;
  <img src="https://raw.githubusercontent.com/vital987/vubuntu/master/assets/screenshots/desktop_ss2.png" align="center" width=450 height=250><br><br>
 </details>
 <details>
  <summary>Smartphone/Tablet</summary>
  <img src="https://raw.githubusercontent.com/vital987/vubuntu/master/assets/screenshots/phone_ss1.png" align="center" width=450 height=250>&nbsp;
  <img src="https://raw.githubusercontent.com/vital987/vubuntu/master/assets/screenshots/phone_ss2.png" align="center" width=450 height=250><br><br>
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
| NGROK_REGION | Ngrok Server Region (Only PureVNC) |
| NO_SLEEP | Prevent Heroku app from sleeping, disabled by default |
| APP_NAME | Name of Heroku app |
| BRAVE_USE_SHM | Usage of /dev/shm for Brave |

## **Installation :**
 * Heroku Users :
   * THe project has been prohibited on Heroku due to violation of Heroku's T&C.
   * ~~Click on [Deploy Now](https://heroku.com/deploy?template=https://github.com/vubuntu) button.~~
   * ~~Set the app name & variables.~~
   * ~~Deploy.~~
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
   * noVNC Web-UI will be accessible on port **8080**

## **Warnings :**
  * [ ! ] **VNC_TITLE & VNC_PASS values should be without spaces.**
  * [ ! ] **The whole project runs as a root user and non-sandboxed chromium in a docker container.**
  * [ ! ] **Using VNC/Remote Desktops are strictly prohibited/banned on many free platforms.**
  * [ ! ] **Deploy/Use at your own risk & responsibility!**

