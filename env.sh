PIHOLE_PASSWORD="$([ -n "$(type -P openssl)" ] && openssl rand -base64 48 || echo "$RANDOM")"
PIHOLE_VIRTUAL_HOST="pihole.mydomain.com"
PIHOLE_VIRTUAL_DOMAIN="pihole.mydomain.com"
