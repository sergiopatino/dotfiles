if [ $OS = "Darwin" ]
    function vpn_cookie --description 'Login to Intuit VPN'
        command sh -c '(xargs echo < $INTU_PW_FILE && echo "1")' | \
        sudo openconnect \
        --protocol=gp \
        --passwd-on-stdin \
        --user=$INTU_USER \
        --local-hostname=$INTU_VPN_HOSTNAME \
        --cookieonly \
        --authenticate \
        $INTU_VPN_URL
    end
end
