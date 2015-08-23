### favorite directories
alias go='cd "/Users/vahid/Documents/vahid/"'
alias godesk='cd "/Users/vahid/Desktop"'
alias godown='cd "/Users/vahid/Downloads"'
alias gocode='cd "/Users/vahid/Documents/vahid/code"'
alias gov='cd "/Users/vahid/Documents/vahid/code/vfazel.github.io"'
alias gom='cd "/Users/vahid/Documents/vahid/code/market-website"'
alias goh='cd "/Users/vahid/Documents/vahid/code/HMMT-Registration"'
alias gos='cd "/Users/vahid/Documents/vahid/code/msamentorship"'

### basic commands
alias n='nano'
alias a='atom'
alias s='subl'
alias c='cat'
alias l='ls -la'
alias o='open .'
alias ..='cd ..'
alias rmrf='rm -rf'
alias bp='a ~/.bash_profile'

### git
alias gu='git pull'
alias gs='git status'
alias gd='git diff'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gadd='git add .'
alias guom='git pull origin master'
alias gpom='git push origin master'
alias gphm='git push heroku master'

### web dev
alias n='npm run start'
alias d='npm run dev'
alias m='mongod'
alias p='python manage.py runserver'
alias gc5='/usr/bin/open -a "/Applications/Google Chrome.app" "http://localhost:5000"'
alias gc8='/usr/bin/open -a "/Applications/Google Chrome.app" "http://localhost:8000"'
alias kk='m & d & n & sleep 1; gc5; fg; kill $(jobs -p); sleep 1; clear'

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

### path
export PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export PATH="/usr/local/heroku/bin:$PATH"

### HMMT credential file
export AWS_CREDENTIAL_FILE="/Users/vahid/Documents/vahid/code/HMMT-Registration/.elasticbeanstalk/aws_credential_file"
