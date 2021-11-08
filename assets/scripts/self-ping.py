#!/usr/bin/env python3
# Script to send GET request to the Heroku app URL every 25 minutes to prevent the app from sleeping.
import os
import logging
try:
    import requests
except:
    os.system("pip3 install requests")
    import requests
from time import sleep
if __name__ == "__main__":

    logging.basicConfig(filename="/app/.vubuntu/assets/logs/self-ping.py.log", format='%(asctime)s %(message)s', filemode='w')
    logger = logging.getLogger()
    logger.setLevel(logging.INFO)

    if os.getenv("NO_SLEEP") == "1":
        if "APP_NAME" not in os.environ:
            print("[!]APP_NAME unset, terminating...")
            logger.error("[!]APP_NAME unset, terminating...")
            exit()
        app_name = os.getenv("APP_NAME")
        while True:
            try:
                logger.info(f"Pinging https://{app_name}.herokuapp.com")
                requests.get(f"https://{app_name}.herokuapp.com")
            except:
                logger.warning("Ping failed, retrying...")
                try:
                    requests.get(f"https://{app_name}.herokuapp.com")
                except:
                    logger.error("Cannot ping app, terminating...")
            sleep(25*60)
    else:
        print("NO_SLEEP mode disabled, terminating...")
        logger.info("NO_SLEEP mode disabled, terminating...")

