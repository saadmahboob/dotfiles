#
# CONFIGURE BEHAVIOR
#
# History control
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

# Create ls shortcuts
alias ll='ls -l'
alias la='ls -al'

# Enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dotfiles/colors/solarized.dircolors && \
      eval "$(dircolors -b ~/.dotfiles/colors/solarized.dircolors)" || \
      eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Add scripts to the path
export PATH=~/.dotfiles/scripts:$PATH

# Export my prompt
export PROMPT_DIRTRIM=4
export PS1="\n\e[30;46m \@ \e[36;40m\e[39;40m \u@\h (bash) \e[30;44m\e[30;44m \w \e[0;34m\e[m \n >> "

# Source fuzzy matcher
[ -f ~/.fzf.bash ] && source ~/.fzf.bash


#
# SOURCE LOCAL CONFIGURATIONS
#
if [ -f ~/.bashrc.local ]; then
    source ~/.bashrc.local
fi
