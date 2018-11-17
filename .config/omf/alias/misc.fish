# VIM shortcuts
alias vim="/usr/local/bin/nvim"
alias vi="/usr/local/bin/nvim"
alias v="/usr/local/bin/nvim"

# Determine public IP
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"

# Lynx with VI-keys
alias lynx="lynx -vikeys"

# TMUX shortcut
alias t="tmux"
alias tmux="tmux -f $HOME/.config/tmux/tmux.conf"

# User less instead of more and cat
alias more="/usr/local/share/nvim/runtime/macros/less.sh"
alias m="/usr/local/share/nvim/runtime/macros/less.sh"
alias less="/usr/local/share/nvim/runtime/macros/less.sh"
alias le="/usr/local/share/nvim/runtime/macros/less.sh"

# SSH
alias ss="/usr/local/bin/ssh"

# Fasd
#alias a='fasd -a'        # any
#alias s='fasd -si'       # show / search / select
#alias d='fasd -d'        # directory
#alias f='fasd -f'        # file
#alias sd='fasd -sid'     # interactive directory selection
#alias sf='fasd -sif'     # interactive file selection
#alias z='fasd_cd -d'     # cd, same functionality as j in autojump
#alias zz='fasd_cd -d -i' # cd with interactive selection

# Test Kitchen
alias k="kitchen"
alias ks="kitchen status"

# Terraform
alias tf="terraform"
alias tfp="terraform plan"
alias tfa="terraform apply"

# Pip Upgrade all packages
alias pipup='pip freeze --local | grep -v "^\-e" | cut -d = -f 1  | xargs -n1 pip install -U'

# History
alias h="history"
alias hm="history --merge"
alias ht="history --show-time"
alias hs="history search"

# Clear
alias c="clear"

# SSH tunnels
#alias tunnelqdcjb="ssh -L 7999:qymprdctgts01.corp.intuit.net:799 opdssdtis301.corp.intuit.net -N"
#alias mediaout="ssh -p 8080 tomato.vertigobox.org"
#alias mediatunnel="ssh -o ServerAliveInterval=15 -o ServerAliveCountMax=2 -p 8080 tomato.vertigobox.org -L 58846:localhost:58846 -L 5900:localhost:5900 -L 6600:media:6600"
