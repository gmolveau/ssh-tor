# SSH-TOR

## A basic SSH client via Tor network

### based on Alpine

Simple run with :  

`docker run --rm -it gmolveau/ssh-tor ssh user@example.com`

With your own private_key run with :  

`docker run --rm -it -v /path/to_your/id_rsa:/id_rsa:ro gmolveau/ssh-tor ssh -i /id_rsa -v user@example.com`
