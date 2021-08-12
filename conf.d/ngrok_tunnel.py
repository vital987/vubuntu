#!/usr/bin/python3
import os
try:
    from pyngrok import ngrok, conf
except:
    os.system('pip3 install pyngrok')
    from pyngrok import ngrok, conf
try:
    AUTH_TOKEN=os.environ['NGROK_AUTH_TOKEN']
except:
    print('[!] Ngrok token not found, assign the token to NGROK_AUTH_TOKEN environment variable & try again.\n[-] Terminating...')
    exit()
ngrok.set_auth_token(AUTH_TOKEN)
conf.get_default().region = "in"
try:
    primary_tunnel = ngrok.connect(os.environ['NGROK_PORT'], os.environ['NGROK_METHOD'], bind_tls=bool(int(os.getenv('NGROK_BINDTLS', 1))))
except:
    print('[!] NGROK_PORT or NGROK_METHOD environment variables has not been set properly, NGROK_METHOD should be http or tcp')
url=primary_tunnel.public_url
print(f'[>NGROK]: {url}')
input()
