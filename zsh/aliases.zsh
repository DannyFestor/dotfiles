# git
alias gco="git checkout"
alias gcb="git checkout -b"
alias gcm="git commit -m"
alias gaa="git add ."

# alias ll="eza -l --header --icons=always --absolute=follow -T -L=1"
alias ls="eza"
alias ll="eza -l --header --icons=always"
alias ll2="eza -l --header --icons=always -T -L=2"
alias la="eza -la --header --icons=always"

# NVim
alias vim=nvim

# PHP Code
alias pint="./vendor/bin/pint"
alias phpstan="./vendor/bin/phpstan analyze"
# alias phpstan="./vendor/bin/phpstan analyze --xdebug" # WITH xdebux
alias phpinsights="./vendor/bin/phpinsights"

# Laravel
alias a="php artisan"
alias sail='bash vendor/bin/sail'
alias clear_log="echo > ./storage/logs/laravel.log"

# Minio
alias minio_folder="cd /opt/homebrew/var/minio/"

# PHP Composer versions
alias composer74='php74 /opt/homebrew/bin/composer'
alias composer80='php80 /opt/homebrew/bin/composer'
alias composer81='php81 /opt/homebrew/bin/composer'
alias composer82='php82 /opt/homebrew/bin/composer'

# Docker
alias dcu="docker-compose up"
alias dcd="docker-compose down"
