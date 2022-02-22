# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

eval "$(dircolors $HOME/.dircolors)"

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

export EDITOR=vi
export LESS="cMS --use-color"

alias df='\df -h'
alias dir='\ls --color -lhF'
alias dot='\git --git-dir=$HOME/.dot --work-tree=$HOME'
alias l1='\ls -1'
alias ls='\ls --color -hF'
alias hc='\herbstclient'
alias m='\less'
alias pa='px a'
alias ps='\ps ufww'
alias px='ps x'
