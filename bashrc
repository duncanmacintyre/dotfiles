#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

### ENVIRONMENT VARIABLES ###

PS1='\[\e[0;32m\]\u\[\e[0m\]: \[\e[1;34m\]\w\[\e[0m\] $ '

### ALIASES ###

# bash
alias bashcon='nano ~/.bashrc; . ~/.bashrc'
alias cp='cp -iv'
alias ls='ls --color=auto --group-directories-first'
alias lsa='ls -A --color=auto --group-directories-first'
alias lsl='ls -Alh --color=auto --group-directories-first'
alias lsr='ls -Alhd --color=auto --group-directories-first $(find)'
alias mv='mv -iv'

# pacman and yaourt
alias mirrors='sudo pacman-mirrors -g'
alias upgr='sudo yaourt -Syua --noconfirm; sudo pacman -Rns $(pacman -Qtdq); sudo paccache -r; sudo paccache -ruk0'
