# GOPATH
[ -f $HOME/Code/go ]; and set -gx GOPATH $HOME/Code/go
[ -f /usr/local/opt/go/libexec ]; and set -x GOROOT /usr/local/opt/go/libexec
set PATH $GOPATH/bin $GOROOT/bin $PATH

if test -n "$GOPATH"
    set PATH $GOPATH/bin $PATH
end

if test -n "$GOROOT"
    set PATH $GOROOT/bin $PATH
end
