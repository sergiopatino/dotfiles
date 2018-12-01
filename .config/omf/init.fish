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

# Add local bin path
set PATH ~/.local/bin/ $PATH

# Clear duplicate entries in PATH
varclear PATH

# Tab completions Serverless
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish ]; and . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish ]; and . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish
