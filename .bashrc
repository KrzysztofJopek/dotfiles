#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias info='info --vi-keys'
alias t="urxvt & 1>/dev/null 2>/dev/null"
alias svim="sudoedit"
PS1='[\u@\h \W]\$ '
export EDITOR=vim

setxkbmap -option caps:escape
