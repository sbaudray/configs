export ZSH=/home/sbaudray/.oh-my-zsh

. /usr/share/autojump/autojump.sh

plugins=(git vi-mode history-substring-search docker docker-compose)

ZSH_THEME="robbyrussell"
DEFAULT_USER=`whoami`
ENABLE_CORRECTION="false"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

source $ZSH/oh-my-zsh.sh

export VISUAL=nvim
export EDITOR="$VISUAL"
export KEYTIMEOUT=1

export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
# export LANG=en_US.UTF-8
# export ARCHFLAGS="-arch x86_64"
# export SSH_KEY_PATH="~/.ssh/rsa_id"
PATH="$(yarn global bin):$PATH"
PATH=~/.local/bin:$PATH
PATH=/home/sbaudray/snap/flutter/common/flutter/bin:$PATH
export PATH
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
alias tree='tree -I node_modules'
alias ssudo='sudo -E env "PATH=$PATH"'

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
