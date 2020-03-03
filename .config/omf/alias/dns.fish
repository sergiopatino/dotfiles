if [ $OS = "Darwin" ]
    # Restart dnsmasq
    alias dns-restart="sudo brew services reload dnsmasq"

    # Clear dns cache
    alias flushdns="sudo killall -HUP mDNSResponder"
    alias flushroutes="sudo ifconfig en0 down;sudo route flush;sudo ifconfig en0 up"
    alias bouncenet='sudo ifconfig en0 down;sudo ifconfig en0 up'
    alias getdns='networksetup -getdnsservers Wi-Fi'
    alias setdnshome='networksetup -setdnsservers Wi-Fi 192.168.30.21 192.168.30.22'
    alias setdnscloud='networksetup -setdnsservers Wi-Fi 8.8.8.8 8.8.4.4'
end

