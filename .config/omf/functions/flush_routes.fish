#Fix VPN routes
function flush_routes
  sudo ifconfig en0 down
  sudo route flush
  sudo ifconfig en0 up
end
