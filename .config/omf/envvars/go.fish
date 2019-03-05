# GOPATH
if test -d $HOME/Code/go
    set -gx GOPATH $HOME/Code/go
else if test -d $HOME/src/go
    set -gx GOPATH $HOME/src/go
end

if test -n "$GOPATH"
    set PATH $GOPATH/bin $PATH
end
