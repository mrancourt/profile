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
source $HOME/alias.zsh
source $HOME/funcs.zsh

export PATH=~/phantomjs-1.8.2-macosx/bin:$PATH
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"

# Kube context 
source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
export KUBE_PS1_SYMBOL_COLOR="grey"
export KUBE_PS1_CTX_COLOR="grey"
export KUBE_PS1_NS_COLOR="grey"
#PS1='$(kube_ps1)'$PS1

autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  elif [[ $(nvm version) != $(nvm version default)  ]]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# Docker
# eval "$(docker-machine env default)"
