function vpn --description 'Login to Intuit VPN'
     command sh -c '(xargs echo < $INTU_PW_FILE && echo "1")' | \
        sudo openconnect \
        --protocol=gp \
        --passwd-on-stdin \
        --user=$INTU_USER \
        --script='vpn-slice -v --dump 10.0.0.0/8' \
        $INTU_VPN
end
