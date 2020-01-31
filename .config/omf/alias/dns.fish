if [ $OS = "Darwin" ]
    # Restart dnsmasq
    alias dns-restart="sudo brew services reload dnsmasq"

    # Clear dns cache
    alias flushdns="sudo killall -HUP mDNSResponder"
    alias flushroutes="sudo ifconfig en0 down;sudo route flush;sudo ifconfig en0 up"
    alias bouncenet='sudo ifconfig en0 down;sudo ifconfig en0 up'
end

