# VIM shortcuts
alias v="nvim"

if [ $OS = "Darwin" ]
  alias ag="ag --ignore=vendor"
  alias vi="nvim"

  # User GNU date
  alias date='gdate'

  # Path Shortcuts
  alias gogit='cd ~/Code/github'
  alias gointu='cd ~/Code/intuit'
  alias gotmux='cd ~/Code/github/tmux-config'
  alias gogo='cd ~/Code/go/src'
  alias godot='cd ~/Code/github/dotfiles'
  alias goconf='cd ~/.config'
  alias goomf='cd ~/.config/omf'
  alias govi='cd ~/Code/github/vim-config'
  alias godl='cd ~/Downloads'
  alias rmt="rmtrash"

  # df
  alias df='df -hi'

end

# OMF Reload
alias omfr='omf reload'

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
alias tkill='tmux kill-server'
alias tmux="tmux -f $HOME/.config/tmux/tmux.conf"

# User less from nvim
[ -f /usr/local/share/nvim/runtime/macros/less.sh ]; and alias less="/usr/local/share/nvim/runtime/macros/less.sh"
[ -f /usr/local/share/nvim/runtime/macros/less.sh ]; and alias le="/usr/local/share/nvim/runtime/macros/less.sh"

# SSH
alias s="ssh"
alias vssh="v ~/.ssh/config"
alias cloudflix="ssh -L 8080:localhost:8080 -L 8090:localhost:8090 -L 8085:localhost:8085 -L 9091:localhost:9091 cloudflix-fm"

# Terraform
alias tf="terraform"
alias tfp="terraform plan"
alias tfa="terraform apply"

# History
alias h='history'
alias hm='history --merge'
alias ht='history --show-time'
alias hs='history | fzy'

# Cd
alias c="cd"

alias tf='tail -1000f'

# Make dir
alias md='mkdir -p'

# ls
alias l='ls -AlhF'
alias lk='ls -AlF'
alias u='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# process list
alias psa='ps -Ao user,pid,%cpu,%mem,vsz,rss,tt,stat,start,time,command'
alias psfind='ps -Ao user,pid,%cpu,%mem,vsz,rss,tt,stat,start,time,command|fzy'

# cat aws conf
alias cataws='cat ~/.aws/config'

# curl AWS IPs
alias awsips='curl -s https://ip-ranges.amazonaws.com/ip-ranges.json'
