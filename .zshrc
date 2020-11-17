# zsh conf
plugins=(colored-man-pages colorize pip python brew osx)
ZSH_THEME='robbyrussell'
ENABLE_CORRECTION='true'
export ZSH='/Users/vahid/.oh-my-zsh'
source $ZSH/oh-my-zsh.sh

# env vars
export EDITOR='vim'
export ANDROID_HOME=$HOME/Library/Android/sdk
export GOOGLE_APPLICATION_CREDENTIALS='~/gcloud.json'

# PATH
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:~/google-cloud-sdk/bin
export PATH=$PATH:/usr/local/bin/vim
export PATH=$PATH:'/Users/vahid/Library/Python/3.8/bin'

# common commands
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias c='cd'
alias v='vim'
alias e='v'
alias o='open'
alias l='ls -laG'
alias xx='logout'
alias cl='clear'

# tmux
alias d='tmux a -d -t dev'
alias nd='tmux new-session -s dev'

# git
alias gs='git status'
alias gu='git pull -r'
alias ga='git add .'
alias gc='git commit -m'
alias gpom='git push origin master'
alias gk='git checkout'
alias gd='git diff'
alias gl="git log -10 --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# python
alias env='source env/bin/activate'
alias denv='deactivate'
alias p='python3'
alias pip='pip3'

# complex commands
function gr() { grep "$1" ${@:2} --exclude-dir={node_modules,dist,env,__pycache__,.firebase} -Rn . }
function ef() { v "$(mdfind -onlyin . -name "$1" | head -n 1)" }

# conf management
alias et='v ~/.tmux.conf' 
alias st='tmux source ~/.tmux.conf'
alias ev='v ~/.vimrc' 
alias ez='v ~/.zshrc'
alias sz='source ~/.zshrc'

# quick open
alias oo='cd ~/Desktop/peptales/overfit'
alias of='cd ~/Desktop/peptales/overfit/functions'
alias ow='cd ~/Desktop/peptales/overfit/web'
alias ew='v ~/Desktop/wind.txt'
alias ec='v ~/Documents/vahid/media/txts/cloud.txt'

# start in desktop
cd ~/Desktop
