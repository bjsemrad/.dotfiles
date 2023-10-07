HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias ga='git add'
alias gba='git branch -a'
alias gc='git commit -v'
alias gcb='git checkout -b'
alias gcmsg='git commit -m'
alias gl='git pull'
alias gp='git push'
alias gco='git checkout'
alias gst='git status'

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias qmksetup='. ./python/qmk/bin/activate'
alias vialsetup='. ./python/vial/bin/activate'
eval "$(starship init zsh)"
