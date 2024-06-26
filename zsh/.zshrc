# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="amuse"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	asdf
	fzf-tab
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

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

# MikTex / LaTeX
export PATH="$PATH:$HOME/bin"

# PHPMON
export PATH="$PATH:$HOME/.config/phpmon/bin"

alias sail='bash vendor/bin/sail'

# Minio
alias minio_folder="cd /opt/homebrew/var/minio/"
alias cdci=/Users/dannyfestor/git/freelance/ci/

# Laravel Log
alias a="php artisan"
alias clear_log="echo > ./storage/logs/laravel.log"

# Symfony
export PATH="$HOME/.symfony5/bin:$PATH"

# PHP Code
alias pint="./vendor/bin/pint"
alias phpstan="./vendor/bin/phpstan analyze"

# alias phpstan="./vendor/bin/phpstan analyze --xdebug"
alias phpinsights="./vendor/bin/phpinsights"

# PHP Composer versions
alias composer74='php74 /opt/homebrew/bin/composer'
alias composer80='php80 /opt/homebrew/bin/composer'
alias composer81='php81 /opt/homebrew/bin/composer'
alias composer82='php82 /opt/homebrew/bin/composer'

# Docker
alias dcu="docker-compose up"
alias dcd="docker-compose down"

# ASDF
# Go
# . ~/.asdf/plugins/golang/set-env.zsh
local go=$(asdf where golang)
export GOROOT=$go/go
export GOBIN=$go/go/bin
export PATH=$PATH":$go/packages/bin"
# Dart
# bash /Users/dannyfestor/.asdf/plugins/dart/tools/dart_version_watcher.sh
# Flutter
export FLUTTER_ROOT="$(asdf where flutter)"
# Java
# . ~/.asdf/plugins/java/set-java-home.zsh
java_path="$(asdf which java)"
if [[ -n "${java_path}" ]]; then
  export JAVA_HOME
  JAVA_HOME="$(dirname "$(dirname "${java_path:A}")")"
  export JDK_HOME=${JAVA_HOME}
fi
# Ocaml / Opam
eval $(opam env)
# Zig ZLS
export PATH=$PATH":/Users/dannyfestor/.zig/zls/zig-out/bin"

# Dotnet
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT
export PATH=$PATH:$DOTNET_ROOT/tools

# NVim
alias vim=nvim

# Herd injected NVM configuration
# export NVM_DIR="/Users/dannyfestor/Library/Application Support/Herd/config/nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# [[ -f "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh" ]] && builtin source "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh"

# pnpm
  # export PNPM_HOME="/Users/dannyfestor/Library/pnpm"
  # case ":$PATH:" in
  #   *":$PNPM_HOME:"*) ;;
  #   *) export PATH="$PNPM_HOME:$PATH" ;;
  # esac
# pnpm end
