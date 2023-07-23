# Zplug
source ~/.zplug/init.zsh

zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-completions"
zplug "zap-zsh/exa"
zplug "fdellwing/zsh-bat"

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

# Aliases
alias vim='nvim'
# autostart TMUX
[ -z "$TMUX" ] && exec tmux new -As .

# init copilot cli
eval "$(github-copilot-cli alias -- "$0")"

# load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# must be at the end!
eval "$(starship init zsh)"
