if [ $OS = "Darwin" ]
    function vpn --description 'Login to Intuit VPN'
        command sh -c '(xargs echo < $INTU_PW_FILE && echo "1")' | \
            sudo openconnect \
            --protocol=gp \
            --passwd-on-stdin \
            --user=$INTU_USER \
            --script="vpn-slice -v --dump $INTU_VPN_HOSTS" \
            --csd-wrapper=$HOME/.local/bin/hipreport.sh \
            $INTU_VPN_URL
    end
end
