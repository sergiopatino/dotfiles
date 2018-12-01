# Delete dangling images
alias drmi="docker rmi -f (docker images --filter "dangling=true" -q)"
