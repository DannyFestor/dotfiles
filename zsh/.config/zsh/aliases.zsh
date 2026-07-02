# Tmux
alias t="tmux attach || tmux new -s Work"

# Neovim
alias n="nvim"

# PHP/Laravel
alias a="php artisan"
alias amf="php artisan migrate:fresh --seed"
alias sail='sh $([ -f sail ] && echo sail || echo vendor/bin/sail)'

# Github
alias gco='git checkout'
alias gcb='git checkout -b'
alias gcd='git branch -D'

# eza (better ls)
if command -v eza &> /dev/null; then
  alias ls='eza -lh --group-directories-first --icons=auto'
  alias lsa='ls -a'
  alias lt='eza --tree --level=2 --long --icons --git'
  alias lta='lt -a'
fi

# zoxide (better cd)
if command -v zoxide &> /dev/null; then
  alias cd="zd"
  zd() {
    if (( $# == 0)); then
      builtin cd ~ || return
    elif [[ -d $1 ]]; then
      builtin cd "$1" || return
    else
      if ! z "$@"; then
        echo "Error: Directory not found"
        return 1
      fi

      print "\U000F17A9 "
      pwd
    fi
  }
fi

# Update all tools
up-all() {
  startAll=$EPOCHSECONDS
  local steps=(
    "Homebrew"            "brew update && brew upgrade"
    "Mise"                "mise up"
    "Vite+"               "vp upgrade"
    "Composer"            "composer self-update && composer global update"
    "Mago"                "mago self-update"
    "Rustup"              "rustup upgrade"
    "Bun"                 "bun upgrade"
    "pnpm (global)"       "pnpm -g update"
    "npm (global)"        "npm -g update"
    "Claude"              "claude upgrade"
  )
  local i name cmd start rc total=${#steps[@]}
  for ((i=1; i<=total; i+=2)); do
    name="${steps[i]}"
    cmd="${steps[i+1]}"
    printf "\n\033[1;36m[%d/%d] %s\033[0m\n" "$((i/2+1))" "$((total/2))" "$name"
    start=$EPOCHSECONDS
    if eval "$cmd"; then
      printf "\033[1;32m✓ %s (%ds)\033[0m\n" "$name" "$((EPOCHSECONDS-start))"
    else
      rc=$?
      printf "\033[1;31m✗ %s failed (exit %d, %ds)\033[0m\n" "$name" "$rc" "$((EPOCHSECONDS-start))"
    fi
  done
  printf "\n========================\n\033[1;32m✓ %s (%ds)\033[0m\n" "Updated everything in" "$((EPOCHSECONDS-startAll))"
}
alias update-tooling="up-all"
