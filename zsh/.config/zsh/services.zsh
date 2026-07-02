# Homebrew 
eval "$(/opt/homebrew/bin/brew shellenv zsh)" 
export HOMEBREW_DOWNLOAD_CONCURRENCY=auto # Set Homebrew download concurrency to auto
 
# Mise 
eval "$(/Users/danny/.local/bin/mise activate zsh)" 
export MISE_GO_SET_GOBIN=false

# Vite+ bin (https://viteplus.dev)
. "$HOME/.vite-plus/env"

# Atuin
eval "$(atuin init zsh)"

# Starship
eval "$(starship init zsh)"

# Zoxide (better cd)
eval "$(zoxide init zsh)"

# PNPM
export PNPM_HOME="/Users/danny/.local/share/pnpm"

# FZF
# source <(fzf --zsh)
