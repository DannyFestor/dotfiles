# Initialize Zsh native completion system
autoload -Uz compinit && compinit
zmodload zsh/datetime
# Znap zsh plugin manager
# Download Znap, if it's not there yet.
[[ -r ~/.zsh/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/.zsh/znap
source ~/.zsh/znap/znap.zsh  # Start Znap
# Load the Autocomplete plugins
znap source zsh-users/zsh-syntax-highlighting
znap source zsh-users/zsh-autosuggestions
# znap source marlonrichert/zsh-autocomplete

export SAVEHIST=32768 # Number of history entries to save
setopt HIST_EXPIRE_DUPS_FIRST # Expire duplicates first
setopt HIST_IGNORE_DUPS # Do not store duplicate commands
setopt HIST_IGNORE_SPACE # Do not store commands starting with a space
setopt HIST_SAVE_NO_DUPS # Do not save duplicate commands to the history file

[ -f "$HOME/.config/zsh/aliases.zsh" ] && source "$HOME/.config/zsh/aliases.zsh"
[ -f "$HOME/.config/zsh/services.zsh" ] && source "$HOME/.config/zsh/services.zsh"
[ -f "$HOME/.config/zsh/languages.zsh" ] && source "$HOME/.config/zsh/languages.zsh"


# PATH
## Global Composer 
export PATH="$HOME/.composer/vendor/bin:$PATH" 
## Added by Toolbox App 
export PATH="$PATH:/Users/danny/Library/Application Support/JetBrains/Toolbox/scripts" 
## PHPMonitor
export PATH=$HOME/bin:~/.config/phpmon/bin:$PATH
## NPM global NPM packages - must be edited in ~/.npmrc
export PATH="$HOME/.local/share/npm/bin:$PATH"
## bun
export PATH="$BUN_INSTALL/bin:$PATH"
## pnpm
case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/danny/.gcloud/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/danny/.gcloud/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/danny/.gcloud/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/danny/.gcloud/google-cloud-sdk/completion.zsh.inc'; fi

# bun completions
[ -s "/Users/danny/.bun/_bun" ] && source "/Users/danny/.bun/_bun"

