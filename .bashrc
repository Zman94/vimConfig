. ~/.kalias
alias ls="ls --color=always"
alias subl="sublime3"
alias zgsal="gsa_login zachg57"
alias pdf="evince"
alias rm_docker_container="docker rm $(docker ps -q -f status=exited)"
alias rm_docker_image="docker rmi $(docker images | grep "^<none>" | awk "{print $3}")"
alias sleep="systemctl suspend"
alias volume="alsamixer"
alias flux="redshift -t 3700:3700"
alias falcon="ssh zachg57@falcon6.pok.stglabs.ibm.com"

export ZGSA="/gsa/pokgsa/home/z/a/zachg57"
export ZGSAS="/gsa/pokgsa/projects/z//zachg57/shared"
export Z1090_MODE="SINGLE"

export PATH=.:$PATH

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:."
export PATH=/gsa/pokgsa/home/z/a/zachg57/my_git/Emily/emily/bin.x86_64_RH/:$PATH
export LD_LIBRARY_PATH=/gsa/pokgsa/home/z/a/zachg57/my_git/Emily/emily/bin.x86_64_RH/:$LD_LIBRARY_PATH

# added by travis gem
[ -f /Users/Zach/.travis/travis.sh ] && source /Users/Zach/.travis/travis.sh

#####################   .bash_profile   ########################
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3.4
export WORKON_HOME=~/Envs


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Add a time stamp to bash
############################################

# Fill with minuses

# (this is recalculated every time the prompt is shown in function prompt_command):

fill="--- "


# Reset color for command output
force_color_prompt=yes

reset_style='\[\033[00m\]'

status_style=$reset_style'\[\033[0;90m\]' # gray color; use 0;37m for lighter color

prompt_style=$reset_style'\[\033[32m\]' # bold green

command_style=$reset_style'\[\033[1m\]' # bold black

# Prompt variable:

source ~/.git-prompt.sh

PS1="$status_style"'$fill \t\n'"$command_style"'${debian_chroot:+($debian_chroot)}\u[\w$(__git_ps1 " (%s)")]\$ '

export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'


# (this one is invoked every time before a command is executed):

trap 'echo -ne "\033[00m"' DEBUG


function prompt_command {


    # create a $fill of all screen width minus the time string and a space:

    let fillsize=${COLUMNS}-9

    fill=""

    while [ "$fillsize" -gt "0" ]

    do

	fill="-${fill}" # fill with underscores to work on

	let fillsize=${fillsize}-1

    done


    # If this is an xterm set the title to user@host:dir

    case "$TERM" in

	xterm*|rxvt*)

	    bname=`basename "${PWD/$HOME/~}"`

	    echo -ne "\033]0;${bname}: ${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"

	    ;;

	*)

	    ;;

    esac


}

PROMPT_COMMAND=prompt_command


# Tab completion for branch names
source ~/.git-completion.bash

# autoenv setup
source ~/.autoenv/activate.sh
source /usr/local/bin/virtualenvwrapper.sh

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
source ~/.autoenv/activate.sh

####### added for zPDT #######170526112932
#export PATH=/usr/z1090/bin:$PATH
#export LD_LIBRARY_PATH=/usr/z1090/bin:$LD_LIBRARY_PATH
export MANPATH=/usr/z1090/man:$MANPATH
ulimit -c unlimited
ulimit -d unlimited
####### end of added for zPDT #######

