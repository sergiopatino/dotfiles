# Pyenv
if type -q pyenv
    status --is-interactive; and source (pyenv init -|psub)
    [ -f /usr/local/share/fish/vendor_completions.d/pyenv.fish ]; and source /usr/local/share/fish/vendor_completions.d/pyenv.fish
end
