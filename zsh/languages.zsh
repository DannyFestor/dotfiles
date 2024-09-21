# PHP
# Symfony
export PATH="$HOME/.symfony5/bin:$PATH"

# GO
export GOPATH=$HOME/go
export GOBIN=$HOME/go/bin
export PATH="$HOME/go/bin:$PATH"

# RUST
. "$HOME/.cargo/env"

# Javascript/Typescript
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# Dotnet
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT
export PATH=$PATH:$DOTNET_ROOT/tools

# FLUTTER
export PATH="/Users/dannyfestor/flutter/bin:$PATH"

# OCAML
[[ ! -r '/Users/dannyfestor/.opam/opam-init/init.zsh' ]] || source '/Users/dannyfestor/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null

# bun completions
[ -s "/Users/dannyfestor/.bun/_bun" ] && source "/Users/dannyfestor/.bun/_bun"

# deno
# export DENO_INSTALL="/Users/dannyfestor/.deno"
# export PATH="$DENO_INSTALL/bin:$PATH"
