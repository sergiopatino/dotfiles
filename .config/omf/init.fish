# Add to paths
if test -d $HOME/Code/go
    set -gx GOPATH $HOME/Code/go
else if test -d $HOME/src/go
    set -gx GOPATH $HOME/src/go
end

if test -n "$GOPATH"
    set PATH $GOPATH/bin $PATH
end

# Add local bin to PATH
set PATH ~/.local/bin/ $PATH

# Add Homebrew sbin to PATH
set PATH /usr/local/sbin/ $PATH

# Source envvars
for file in $OMF_CONFIG/vars/*.fish
    source $file
end

# Source aliases
for file in $OMF_CONFIG/alias/*.fish
    source $file
end

# Source completions
for file in $OMF_CONFIG/completions/*.fish
    source $file
end

# Clear duplicate entries in PATH
varclear PATH
