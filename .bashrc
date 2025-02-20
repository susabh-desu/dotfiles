#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export MANPAGER='vim -MRn +MANPAGER - '
export EDITOR='vim'

eval -- "$(/usr/bin/starship init bash --print-full-init)"
