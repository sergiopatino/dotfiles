if [ $OS = "Darwin" ]
  # Restart dnsmasq
  alias dns-restart="sudo brew services reload dnsmasq"

  # Clear dns cache
  alias dns-clear="sudo killall -HUP mDNSResponder"
end
