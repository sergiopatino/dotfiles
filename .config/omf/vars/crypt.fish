set -gx CRYPT_DIR $HOME/.crypt

[ -f $CRYPT_DIR/intu_pw ]; and set -gx INTU_PW_FILE $CRYPT_DIR/intu_pw
[ -f $CRYPT_DIR/intu_user ]; and set -gx INTU_USER (eval xargs echo < $CRYPT_DIR/intu_user)
[ -f $CRYPT_DIR/intu_vpn ]; and set -gx INTU_VPN (eval xargs echo < $CRYPT_DIR/intu_vpn)
