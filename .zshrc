source <(curl -sL init.zshell.dev); zzinit
zi wait lucid light-mode for \
  atinit"zicompinit; zicdreplay" \
    z-shell/F-Sy-H \
    OMZP::colored-man-pages \
    zsh-users/zsh-autosuggestions \
  blockf atpull'zi creinstall -q .' \
    zsh-users/zsh-completions \
  atload"bindkey '\t' menu-complete '$terminfo[kcbt]' reverse-menu-complete" \
    marlonrichert/zsh-autocomplete \
    zap-zsh/exa \
    fdellwing/zsh-bat \

zi ice as"command" from"gh-r" \
  atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
  atpull"%atclone" src"init.zsh"
zi light starship/starship

# Aliases
alias vim='nvim'
# autostart TMUX
[ -z "$TMUX" ] && exec tmux new -As .

### SLOW AS FUCK
# init copilot cli
# eval "$(github-copilot-cli alias -- "$0")"
# load nvm
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
### SLOW AS FUCK

