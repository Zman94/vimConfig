# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="/Users/zach/.oh-my-zsh"

# default editor
export EDITOR=vim

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
prompt_kube_ps1(){
   echo -n `kube_ps1`
}

KUBE_PS1_SYMBOL_USE_IMG=true

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(kube_ps1 status virtualenv root_indicator background_jobs history time)

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

 DEFAULT_USER="zach"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
 HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    256color
    abbr-path
    alias-tips
    brew
    git
    colored-man
    colorize
    command-time
    #docker
    #docker-compose
    gitgo
    helm
    kube-ps1
    kubectl
    minikube
    moleculealiases
    osx
    pip
    python
    ssh-agent
    vagrant
    vagrantaliases
    virtualenv
    zsh-syntax-highlighting
    zsh-autopair
    zsh-autosuggestions
    zsh-apple-touchbar
    zsh-command-time
    zsh-dircolors-solarized
)

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.abbr_pwd


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
#
export PATH=.:$PATH
export HELM_HOME=/Users/zach/.helm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:."

# added by travis gem
[ -f /Users/Zach/.travis/travis.sh ] && source /Users/Zach/.travis/travis.sh

#####################   .bash_profile   ########################
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export WORKON_HOME=~/Envs
export GOPATH=~/go

### Vim Mode Updates ###
#bindkey -e
#set editing-mode vi

# Vi mode settings
# Better searching in command mode
#bindkey -M vicmd '?' history-incremental-search-forward
#bindkey -M vicmd '/' history-incremental-search-backward

# Beginning search with arrow keys
#bindkey "^[OA" up-line-or-beginning-search
#bindkey "^[OB" down-line-or-beginning-search
#bindkey -M vicmd "k" up-line-or-beginning-search
#bindkey -M vicmd "j" down-line-or-beginning-search
#bindkey "${terminfo[khome]}" beginning-of-line
#bindkey "${terminfo[kend]}" end-of-line

# Easier, more vim-like editor opening
# `v` is already mapped to visual mode, so we need to use a different key to
# open Vim
#bindkey -M vicmd "^V" edit-command-line

# Make Vi mode transitions faster (KEYTIMEOUT is in hundredths of a second)
#export KEYTIMEOUT=1

### END Vim Mode Updates ###

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias subl="sublime3"
alias zgsal="gsa_login zachg57"
alias pdf="evince"
alias volume="alsamixer"
alias flux="redshift -t 3700:3700"
alias ml="cd ~/Projects/cs446/final"
alias re="cd ~/Projects/Research-SP18"
#alias python="python3"
alias kc="kubectl"
alias kw="kubectl --namespace=wcra"
alias fix="vim -p `git diff --name-only`;"
alias ssh="sshrc"
alias build="cd ~/Projects/InstallAndGo/helper_scripts"
alias tf="terraform"
alias tf12="terraform12"
alias brl="cd ~/Projects/berkeley_rl/homework_fall2019"
alias opdir="cd ~/Projects/operators/ibm-watson-speech-tts-runtime-operator"


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

source ~/.iterm2_shell_integration.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/zach/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/zach/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/zach/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/zach/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# Updates editor information when the keymap changes.
function zle-keymap-select() {
  zle reset-prompt
  zle -R
}

zle -N zle-keymap-select

function vi_mode_prompt_info() {
  echo "${${KEYMAP/vicmd/[% NORMAL]%}/(main|viins)/[% INSERT]%}"
}

# define right prompt, regardless of whether the theme defined it
RPS1='$(vi_mode_prompt_info)'
RPS2=$RPS1

### Postgres Op ###
export GOPATH=$HOME/odev
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
export CO_NAMESPACE=demo
export CO_CMD=kubectl
export CO_IMAGE_PREFIX=crunchydata
export CO_BASEOS=centos7
export CO_VERSION=3.4.0
export CO_IMAGE_TAG=$CO_BASEOS-$CO_VERSION

# for the pgo CLI auth
export PGO_CA_CERT=$COROOT/conf/postgres-operator/server.crt
export PGO_CLIENT_CERT=$COROOT/conf/postgres-operator/server.crt
export PGO_CLIENT_KEY=$COROOT/conf/postgres-operator/server.key

# for crunchy-scheduler startup
export CCP_IMAGE_PREFIX=crunchydata
export CCP_IMAGE_TAG=centos7-10.6-2.2.0

# useful aliases
alias setip='export CO_APISERVER_URL=https://`kubectl get service postgres-operator -o=jsonpath="{.spec.clusterIP}"`:8443'
alias alog='kubectl logs `kubectl get pod --selector=name=postgres-operator -o jsonpath="{.items[0].metadata.name}"` -c apiserver'
alias olog='kubectl logs `kubectl get pod --selector=name=postgres-operator -o jsonpath="{.items[0].metadata.name}"` -c operator'
alias ll='ls -l'

### End ###

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/local/opt/autoenv/activate.sh

# Mujoco commands
export LD_LIBRARY_PATH=~/.mujoco/mjpro150/bin

eval "$(direnv hook zsh)"
