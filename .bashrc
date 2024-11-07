# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

eval "$(dircolors $HOME/.dircolors)"

alias c='\clear'
alias df='\df -h'
alias dir='\ls --color -lhF'
alias dot='\git --git-dir=$HOME/.dot --work-tree=$HOME'
alias du='\du -h'
alias l1='\ls -1'
alias ls='\ls --color -hF'
alias hc='\herbstclient'
alias m='\less'
alias pa='ps a'
alias ps='\ps uxfwww'
alias t='\touch'
alias u='\unalias'
alias top='\top -u $USER -e m -d 1'
alias htop='\htop -u $USER -t'
