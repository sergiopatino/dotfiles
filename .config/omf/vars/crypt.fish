set -gx CRYPT_DIR $HOME/.crypt

[ -f $CRYPT_DIR/intu_pw ]; and set -gx INTU_PW_FILE $CRYPT_DIR/intu_pw
[ -f $CRYPT_DIR/intu_user ]; and set -gx INTU_USER (eval xargs echo < $CRYPT_DIR/intu_user)
[ -f $CRYPT_DIR/intu_vpn_url ]; and set -gx INTU_VPN_URL (eval xargs echo < $CRYPT_DIR/intu_vpn_url)
[ -f $CRYPT_DIR/intu_vpn_hosts ]; and set -gx INTU_VPN_HOSTS (eval xargs echo < $CRYPT_DIR/intu_vpn_hosts)
[ -f $CRYPT_DIR/intu_vpn_hostname ]; and set -gx INTU_VPN_HOSTNAME (eval xargs echo < $CRYPT_DIR/intu_vpn_hostname;)
