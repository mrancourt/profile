### Exports ###
# Add RVM to PATH for scripting
export GOPATH=$HOME/go_workspace
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$GOPATH/bin
export GOBIN=$GOPATH/bin
export PATH=$PATH:/usr/local/sbin 

HISTFILESIZE=10000000

# Load RVM into a shell session *as a function*

### ZSH Configs ###
# Path to your oh-my-zsh installation.
export ZSH=/Users/mrancourt/.oh-my-zsh

export EDITOR=nano

# Set name of the theme to load.
ZSH_THEME="blinks"

DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="false"

# Plugins
plugins=(rails git ruby brew gem)

source $ZSH/oh-my-zsh.sh

### Aliases ### 
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"

alias h="cd $HOME"

alias rc="subl $HOME/.zshrc"
alias s="rails s"
alias mys="mysql --auto-rehash -u root"

# Show forwarded ports (by ssh)
alias fwd="lsof -i -n -P | grep -e 'IPv4' | grep -E '^ssh' | grep -e '(LISTEN)'"

# Dev
alias g="git"
alias gcm="git cehckout master"
alias c=clear

### Function ###
mkdirc ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

jumpbox() {
	ssh -L $3:$2 $1 "while true; do sleep 5; printf '\r'; done"
}

port() {
	lsof -i :$1
}

pxg() {
	ps aux | grep $1
}

# git status watch
sw() {
	while :
	do
		echo -ne "\ec"
		git status
		sleep 1
	done	
}

export PATH=~/phantomjs-1.8.2-macosx/bin:$PATH

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
source /usr/local/bin/activate.sh
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# added by travis gem
[ -f /Users/mrancourt/.travis/travis.sh ] && source /Users/mrancourt/.travis/travis.sh

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
