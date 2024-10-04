# autocomplete
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# fzf-tab # needs fzftab plugin
source $HOME/.config/fzf-tab/fzf-tab.plugin.zsh
zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup

# fzf
# [ -f "$HOME/.fzf.zsh" ] && source "$HOME/.fzf.zsh"
source <(fzf --zsh)

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
