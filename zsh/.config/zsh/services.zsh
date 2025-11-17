# autocomplete
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# fzf-tab # needs fzftab plugin
source $HOME/.config/fzf-tab/fzf-tab.plugin.zsh
zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup

# fzf - fuzzy finder
# [ -f "$HOME/.fzf.zsh" ] && source "$HOME/.fzf.zsh"
source <(fzf --zsh)
# export FZF_DEFAULT_OPTS="--height 40% --border --preview 'bat --style=numbers --color=always --line-range :500 {}' --preview-window=right:70%:wrap"
export FZF_DEFAULT_OPTS="--height 40% --border --layout reverse"
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"
#
# Use fd (https://github.com/sharkdp/fd) for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

# Zoxide - a better CD file navigation tool
eval "$(zoxide init zsh)"

# Atuin - shell history reimagined
eval "$(atuin init zsh)"

# rg RIPGREP
# fd - fd is a simple, fast and user-friendly alternative to 'find'

# Laravel Herd
# export PATH="/Users/dannyfestor/Library/Application Support/Herd/bin/":$PATH
#
# # Herd injected PHP 8.2 configuration.
# export HERD_PHP_82_INI_SCAN_DIR="/Users/dannyfestor/Library/Application Support/Herd/config/php/82/"
#
# # Herd injected PHP 7.4 configuration.
# export HERD_PHP_74_INI_SCAN_DIR="/Users/dannyfestor/Library/Application Support/Herd/config/php/74/"
#
# # Herd injected PHP 8.0 configuration.
# export HERD_PHP_80_INI_SCAN_DIR="/Users/dannyfestor/Library/Application Support/Herd/config/php/80/"
#
# # Herd injected PHP 8.1 configuration.
# export HERD_PHP_81_INI_SCAN_DIR="/Users/dannyfestor/Library/Application Support/Herd/config/php/81/"
#
# # Herd injected PHP 8.3 configuration.
# export HERD_PHP_83_INI_SCAN_DIR="/Users/dannyfestor/Library/Application Support/Herd/config/php/83/"

# Herd injected PHP 8.4 configuration.
# export HERD_PHP_84_INI_SCAN_DIR="/Users/dannyfestor/Library/Application Support/Herd/config/php/84/"

# Herd injected NVM configuration
# export NVM_DIR="/Users/dannyfestor/Library/Application Support/Herd/config/nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# [[ -f "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh" ]] && builtin source "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh"
#
# MikTex / LaTeX
export PATH="$PATH:$HOME/bin"

# PHPMON
export PATH="$PATH:$HOME/.config/phpmon/bin"

# SQLite3
export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
