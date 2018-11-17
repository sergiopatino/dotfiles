# Upgrade all pips
alias pip_upgrade='pip freeze --local | grep -v "^\-e" | cut -d = -f 1  | xargs -n1 pip install -U'

# Uninstall all pips
alias pip_uninstall='pip freeze | xargs pip uninstall -y'

# Pyenv related
alias pya='pyenv activate'
alias pyd='pyenv deactivate'
alias pyv='pyenv virtualenv'
alias pyl='pyenv local'
alias pyg='pyenv global'
alias pys='pyenv shell'
alias pyw='pyenv which'
