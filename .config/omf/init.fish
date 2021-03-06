# Add to paths
# Add local bin to PATH
set PATH ~/.local/bin $PATH

# Add Homebrew sbin to PATH
set PATH /usr/local/sbin $PATH

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

# GO ENV
if test -d $HOME/Code/go
    set -gx GOPATH $HOME/Code/go
    set -gx GOPRIVATE $INTU_GITHUB_HOSTNAME
else if test -d $HOME/src/go
    set -gx GOPATH $HOME/src/go
end
    set -gx GOBIN $GOPATH/bin

set -gx GO111MODULE on
set -gx GOROOT /usr/local/opt/go/libexec

if test -n "$GOBIN"
    set PATH $GOBIN $PATH
end

# Clear duplicate entries in PATH
varclear PATH
