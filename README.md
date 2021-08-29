# **Ubuntu Fluxbox with Direct VNC**
[![Ubuntu Version](https://img.shields.io/static/v1?label=Ubuntu&message=20.04&color=E95420&logo=ubuntu)]() [![Maintainer](https://img.shields.io/static/v1?label=Maintainer&message=apoorvvyavahare@pm.me&color=1e90ff)]() [![Maintainance](https://img.shields.io/badge/Maintenance%20Level-Active-success.svg)]() [![Docker Pulls](https://img.shields.io/docker/pulls/vital987/vubuntu.svg)](https://hub.docker.com/r/vital987/vubuntu) [![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)]()<br>[![Heroku](https://www.herokucdn.com/deploy/button.svg)](http://heroku.com/deploy?template=https://github.com/vital987/vubuntu/tree/purevnc)<br>

## **Introduction:**
* **Vubuntu-PureVNC is a modified version of Vubuntu where one can connect to the server directly via VNC url without any web client like NoVNC.**
* **Vubuntu-PureVNC was created for the users who want more flexibility & comfort.**
## **Usage:**
* **Heroku-users:** 
  * Press on *Deploy Now* button above, get your ngrok token by registering on [Ngrok](https://ngrok.com).
  * Give all the information required on the deployment page, click deploy.
  * After deployment, wait for a minute.
  * Click on the *Open App* on the top right of Heroku app dashboard.
  * You'll get ngrok dashboard with a TCP URL, copy the url excluding *tcp://* and paste in the VNC client of your choice.
  * Also you will get Ngrok URL in the logs of Heroku.
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
