FROM caddy2

ENV API_HOST swapi.co
ENV API_PORT 443
ENV BIN_HOST engbpjbr46ths.x.pipedream.net
ENV BIN_PORT 443
ENV PUBLIC_DIR /public

COPY ./public /public
COPY ./Caddyfile /Caddyfile
