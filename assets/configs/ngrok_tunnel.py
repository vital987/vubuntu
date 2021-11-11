#!/usr/bin/python3

import os
import logging
from time import sleep

logging.basicConfig(filename="/app/.vubuntu/assets/logs/ngrok_tunnel.py.log", format='%(asctime)s %(message)s', filemode='w')
logger=logging.getLogger()

try:
    from pyngrok import ngrok, conf
except:
    logger.info('Pyngrok not installed, installing pyngrok...')
    os.system('pip3 install pyngrok PyYAML')
    logger.info('PyNgrok Installed')
    from pyngrok import ngrok, conf

try:
    AUTH_TOKEN=os.environ['NGROK_AUTH_TOKEN']
except:
    print('[-] Ngrok token not found, assign the token to NGROK_AUTH_TOKEN environment variable & try again.\n[-] Terminating...')
    logger.error('NGROK_AUTH_TOKEN environment variable not set, terminating...')
    exit()

ngrok.set_auth_token(AUTH_TOKEN)

if "NGROK_REGION" in os.environ:
    conf.get_default().region = os.environ['NGROK_REGION']
else:
    print("[!] NGROK_REGION unset, defaulting ngrok region to India.")
    logger.warning('NGROK_REGION unset, defaulting ngrok region to India.')
    conf.get_default().region = "in"

try:
    primary_tunnel = ngrok.connect(os.environ['NGROK_PORT'], os.environ['NGROK_METHOD'], bind_tls=bool(int(os.getenv('NGROK_BINDTLS', 1))))
except:
    logger.warning('NGROK_PORT or/and NGROK_METHOD environment variable not set, terminating...')
    print('[-] NGROK_PORT or NGROK_METHOD environment variables has not been set properly, NGROK_METHOD should be http or tcp')

sleep(10)

url=primary_tunnel.public_url

print(f'[>NGROK]: {url}')

input()

