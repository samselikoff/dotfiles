export GOTRACEBACK=all

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Zshell theme
ZSH_THEME="robbyrussell"

# Zshell plugins
plugins+=(rails)
plugins+=(git)
plugins+=(ruby)
plugins+=(bundler)

source $ZSH/oh-my-zsh.sh

# Setup for rbenv
eval "$(rbenv init -)"

# Aliases
alias zshconfig="vim ~/.zshrc"
alias ll="ls -l"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias tmuxconfig="vim ~/.tmux.conf"
alias vimconfig="vim ~/.vimrc.after"
alias gitconfig="vim ~/.gitconfig"

alias proj="cd ~/Projects"
alias em="cd ~/Projects/embermap/"
alias oss="cd ~/Projects/oss/"
alias scratch="cd ~/Projects/scratch/"
alias videos="atom ~/Projects/embermap/Videos"
alias mirage="cd ~/Projects/Mirage"

alias vim="stty stop '' -ixoff ; vim"
alias tmux new="tmux new-session"
alias s="python -m SimpleHTTPServer"
alias teded="foreman start -p 9000 -f Procfile.development"
alias start_pg='rm /usr/local/var/postgres/postmaster.pid && lunchy start postgres'
alias sql="rm -f /usr/local/var/mysql/Sams-Retina-Macbook.local.err && touch /usr/local/var/mysql/Sams-Retina-Macbook.local.pid && mysql.server start"
alias nom="rm -rf node_modules && npm cache clean && npm install"
alias bom="rm -rf bower_components && bower cache clean && bower install"
alias nombom="rm -rf node_modules && npm cache clean && npm install && rm -rf bower_components && bower cache clean && bower install"
alias tmuxa="tmux attach -t TED"
alias npm-exec='PATH=$(npm bin):$PATH'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias words='atom ~/Writing'
alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'

# `Frozing' tty, so after any command terminal settings will be restored
ttyctl -f

set -o vi
EDITOR='vim'
PATH="/usr/local/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
PATH="$HOME/bin:${PATH}"
export PATH=/usr/local/git/bin:$PATH

# Variables
export S3_BUCKET_NAME=turbobear
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
export FASTBOOT_DISABLED=true

bindkey "^R" history-incremental-search-backward

# Setup for direnv
eval "$(direnv hook zsh)"

# Setup for Yarn globals
export PATH="$HOME/.yarn/bin:$PATH"

# Setup for Travis gem
[ -f /Users/samselikoff/.travis/travis.sh ] && source /Users/samselikoff/.travis/travis.sh

# Setup for nodenv
eval "$(nodenv init -)"

export PATH="./node_modules/.bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
