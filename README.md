# Run with caddy

## Install caddy2

Go to [caddy releases](https://github.com/caddyserver/caddy/releases) to get latest caddy v2 binary for your os

I.e:

```
wget -O caddy2 https://github.com/caddyserver/caddy/releases/download/v2.0.0-beta.13/caddy2_beta13_linux_amd64
chmod +x caddy2
```

## Start the server

```
./caddy2 run
```

## With env variables

```
set -a
source .env.example
set +a
./caddy2 run -config Caddyfile.env
```

# Run with docker

```
docker build -t caddy2 -f Dockerfile.caddy .
docker build -t caddy-spa .
docker run -it --name caddy-spa -p 2015:2015 caddy-spa
```

## With env variables

```
docker build -t caddy2 -f Dockerfile.caddy .
docker build -t caddy-spa-env -f Dockerfile.env .
docker run -it --name caddy-spa-env -p 2015:2015 caddy-spa-env
```
