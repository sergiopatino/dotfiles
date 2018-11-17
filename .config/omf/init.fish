# Source aliases
for file in $OMF_CONFIG/alias/*.fish
    source $file
end

# Source envvars
for file in $OMF_CONFIG/envvars/*.fish
    source $file
end

# Source completions
for file in $OMF_CONFIG/completions/*.fish
    source $file
end

# GOPATH
set -gx GOPATH $HOME/code/go
set PATH $GOPATH/bin $PATH

# Add local bin path
set PATH ~/.local/bin/ $PATH

# Pyenv
status --is-interactive; and source (pyenv init -|psub)

# Rbenv
status --is-interactive; and source (rbenv init - --no-rehash|psub)

# Clear duplicate entries in PATH
varclear PATH
