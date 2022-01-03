# VNC + Ubuntu = Vubuntu ¯\\_\(ツ\)\_\/¯

[![Ubuntu Version](https://img.shields.io/static/v1?label=Ubuntu&message=20.04&color=E95420&logo=ubuntu)]() [![Maintainer](https://img.shields.io/static/v1?label=Maintainer&message=apoorvvyavahare@pm.me&color=1e90ff)]() [![Maintainance](https://img.shields.io/badge/Maintenance%20Level-Active-success.svg)]() [![Docker Pulls](https://img.shields.io/docker/pulls/vital987/vubuntu.svg)](https://hub.docker.com/r/vital987/vubuntu) [![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)]()<br>

## **Introduction:**
* **Vubuntu-PureVNC is a modified version of Vubuntu where one can connect to the server directly via VNC url without any web client like NoVNC.**
* **Vubuntu-PureVNC was created for the users who want more flexibility & comfort.**
## **Usage:**
* **Heroku-users:** 
  * **Heroku prohibited this project from deploying due to TOS issues.**
* **Non-Heroku Users:** 
  * Docker should be installed on the system to proceed.
  * Run the below command:
    ```
    docker run --name vubuntu-purevnc \
    -e PORT=9870 \
    -e NGROK_AUTH_TOKEN=<Ngrok AuthToken> \
    -p 8080:9870 \
    vital987/vubuntu-purevnc
    ```
  * Ngrok Web-UI will appear on 0.0.0.0:8080, copy the url excluding *tcp://* and paste in the VNC client of your choice.
  * Ngrok VNC URL will be also appear at the stdout of the console.
## **Refer [this](https://github.com/vital987/vubuntu/blob/master/README.md) readme for more info.**
