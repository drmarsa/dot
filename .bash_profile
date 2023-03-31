# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# Export all variables
set - a

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"

EDITOR=vi
PAGER=less
LESS="crMS --use-color"

PS1="\u@\h:\w% "
