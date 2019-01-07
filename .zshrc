export ZSH=/home/sbaudray/.oh-my-zsh

plugins=(git vi-mode history-substring-search)

ZSH_THEME="agnoster"
DEFAULT_USER=`whoami`
ENABLE_CORRECTION="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

source $ZSH/oh-my-zsh.sh
xmodmap ~/.keymapconfig

export VISUAL=vim
export EDITOR="$VISUAL"
# export LANG=en_US.UTF-8
# export ARCHFLAGS="-arch x86_64"
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# users are encouraged to define aliases within the ZSH_CUSTOM folder.
alias zshconfig="vim ~/.zshrc"
alias sourcezsh="source ~/.zshrc"

