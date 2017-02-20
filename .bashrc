alias ls="ls --color=always"
alias xflux="~/Downloads/xflux11 -z 61820 -k 3500 -r 0"
alias shutdown="sudo shutdown -P now"
alias sleep="systemctl suspend"


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# added by travis gem
[ -f /Users/Zach/.travis/travis.sh ] && source /Users/Zach/.travis/travis.sh

#####################   .bash_profile   ########################
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.5
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
