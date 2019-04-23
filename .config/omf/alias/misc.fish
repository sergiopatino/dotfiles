# VIM shortcuts
alias v="nvim"

# Determine public IP
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# Lynx with VI-keys
alias lynx="lynx -vikeys"

# TMUX shortcut
alias t="tmux"
alias tmux="tmux -f $HOME/.config/tmux/tmux.conf"

# User less from nvim
[ -f /usr/local/share/nvim/runtime/macros/less.sh ]; and alias less="/usr/local/share/nvim/runtime/macros/less.sh"
[ -f /usr/local/share/nvim/runtime/macros/less.sh ]; and alias le="/usr/local/share/nvim/runtime/macros/less.sh"

# SSH
alias ss="ssh"

# Terraform
alias tf="terraform"
alias tfp="terraform plan"
alias tfa="terraform apply"

# History
alias h="history"
alias hm="history --merge"
alias ht="history --show-time"
alias hs="history search"

# Clear
alias c="clear"

# df
alias dfh="df -hP"

# ls
alias l="ls"

# Use Trash on Darwin
if [ $OS = "Darwin" ]
  alias rm="rmtrash"
end
