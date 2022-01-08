if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# git pull (ctrl-g+p)
function gitpull() { echo "lazygit"; lazygit; zle reset-prompt; zle redisplay}
zle -N gitpull
bindkey '^ll' gitpull

alias sl="ls"
alias gs="git status"
alias n="nvim"
alias v="nvim --clean"
alias h="cd ~ && ls"
alias e="exit"
alias s="ssh -L 5901:localhost:5901 -i zeus_key.pem aldo@"

PATH="$PATH:$HOME/aldo/.local/bin"
PATH="$PATH:$HOME/.npm/bin"
PATH="$PATH:$HOME/.npm-packages/bin"
PATH="$PATH:${JAVA_HOME}/bin"

export JDTLS_HOME=/home/aldo/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository
export GREP_OPTIONS='--color=always' 
export TERM=xterm-256color
export EDITOR=$(which nvim)
export VISUAL=$(which nvim)
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk
export PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

ZSH_THEME="powerlevel10k/powerlevel10k"
ENABLE_CORRECTION="true"

plugins=( command-not-found colored-man-pages zsh-autosuggestions globalias)

[[ ! -f ~/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

source "/home/aldo/.oh-my-zsh/oh-my-zsh.sh"

