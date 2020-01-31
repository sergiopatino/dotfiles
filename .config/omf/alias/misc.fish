# VIM shortcuts
alias v="nvim"

if [ $OS = "Darwin" ]
  alias vi="nvim"

end

# Determine public IP
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# Lynx with VI-keys
alias lynx="lynx -vikeys"

# TMUX shortcut
alias t="tmux"
alias ta='tmux attach -t'
alias tls='tmux ls'
alias tns='tmux new -s'
alias tks='tmux kill-session -t'
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

# Path Shortcuts
alias codegit='cd ~/Code/github'
alias codeintu='cd ~/Code/intuit'
alias codego='cd ~/Code/go/src'
alias dot='cd ~/Code/github/dotfiles'
alias conf='cd ~/conf'
alias viconf='cd ~/Code/github/vim-config'

# df
alias dfh='df -HP'
alias tf='tail -1000f'

alias md='mkdir -p'

# ls
alias l="ls -AlhF"
alias u='cd ..'
alias ...='cd ../..'

# Use Trash on Darwin
if [ $OS = "Darwin" ]
  alias rmt="rmtrash"
end
