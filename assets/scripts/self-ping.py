#!/usr/bin/env python3
import os
from time import sleep
if __name__ == "__main__":
    if os.getenv("NO_SLEEP") == "1":
        if "APP_NAME" not in os.environ:
            print("APP_NAME unset, terminating...")
            exit()
        app_name = os.getenv("APP_NAME")
        while True:
            try:
                os.system(f"curl https://{app_name}.herokuapp.com")
            except:
                print("Ping failed, retrying...")
                try:
                    os.system(f"curl -s https://{app_name}.herokuapp.com")
                except:
                    print("Cannot ping app, terminating...")
            sleep(25*60)
