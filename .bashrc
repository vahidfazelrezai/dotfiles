### bashrc
alias eb='v ~/.bashrc' 
alias sb='source ~/.bashrc'

### appearance
export PS1='\[\e[36m\][\h | \w]\[\e[0m\] '

### common commands
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias c='cd'
alias v='vim'
alias l='ls -lah --color'
alias ls='ls -h --color'
alias xx='exit'
alias cl='clear'
alias gr='grep --color -rnC 3'
alias fi='find -name'

### tmux 
alias dev='tmux a -t dev'
alias dev2='tmux a -t dev2'
alias dev3='tmux a -t dev3'
alias dev='tmux new-session -s dev'
alias dev2='tmux new-session -s dev2'
alias dev3='tmux new-session -s dev3'
 
### git
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gb='git branch'
alias gk='git checkout'
alias gd='git diff --name-only'
alias gl="git log -10 --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gpom='git push origin master'

### latex
function pl {
	basename="${1%.tex}"
	pdflatex "${basename}".tex
	open "${basename}".pdf
}
function pla {
	basename="${1%.tex}"
	pdflatex "${basename}.tex"
	asy "${basename}"-*.asy
	pdflatex "${basename}.tex"
	open "${basename}".pdf
}

