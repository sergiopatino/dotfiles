# GOPATH
[ -f $HOME/Code/go ]; and set -gx GOPATH $HOME/Code/go
[ -f $HOME/src/go ]; and set -gx GOPATH $HOME/src/go
# [ -f /usr/local/opt/go/libexec ]; and set -x GOROOT /usr/local/opt/go/libexec

if test -n "$GOPATH"
    set PATH $GOPATH/bin $PATH
end

if test -n "$GOROOT"
    set PATH $GOROOT/bin $PATH
end
