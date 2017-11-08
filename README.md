# SSH-TOR

## A basic SSH client via Tor network

### based on Alpine

Run with :  

`docker run --rm -it -v $HOME/.ssh/id_rsa:/id_rsa:ro gmolveau/ssh-tor ssh -i /id_rsa -v user@example.com`
