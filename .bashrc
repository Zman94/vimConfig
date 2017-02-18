
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# added by travis gem
[ -f /Users/Zach/.travis/travis.sh ] && source /Users/Zach/.travis/travis.sh

#####################   .bash_profile   ########################
alias research='cd /Users/Zach/projects/Fall2015Research'
alias chartt57='cd /Users/Zach/projects/chartt57'
alias att='cd /Users/Zach/Projects/ATT'
alias ece='cd /Users/Zach/Documents/ece385'
alias proj='cd /Users/Zach/Projects/Side-Projects'
alias 484='cd /Users/Zach/Projects/CS484'
alias 391='cd /Users/Zach/Projects/ece391'

export PATH=/Users/Zach/Downloads/apache-maven-3.3.3/bin:$PATH
export WORKON_HOME=~/Envs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3

source /usr/local/bin/virtualenvwrapper.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Add a time stamp to bash
############################################

# Modified from emilis bash prompt script

# from https://github.com/emilis/emilis-config/blob/master/.bash_ps1

#

# Modified for Mac OS X by

# @corndogcomputer

###########################################
# Fill with minuses

# (this is recalculated every time the prompt is shown in function prompt_command):

fill="--- "


reset_style='\[\033[00m\]'

status_style=$reset_style'\[\033[0;90m\]' # gray color; use 0;37m for lighter color

prompt_style=$reset_style

command_style=$reset_style'\[\033[1;29m\]' # bold black

# Prompt variable:

source ~/.git-prompt.sh

PS1="$status_style"'$fill \t\n'"$prompt_style"'${debian_chroot:+($debian_chroot)}\u[\w$(__git_ps1 " (%s)")]\$'"$command_style "

export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

# Reset color for command output

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

source /usr/local/opt/autoenv/activate.sh
