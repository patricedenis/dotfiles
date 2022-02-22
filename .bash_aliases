# --
# Title : .bash_aliases
# Description : Define aliases that are includes 
# include file from the user's .bashrc preference file
# Author : Patrice Denis
# Date : July 2021
# Version : v1.1
# Licence : GLP-v3-or-later
# --

alias ls='ls -a --color'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias vi='vim'

#Upgrade process
alias maj='sudo apt update && sudo apt upgrade --yes && sudo apt autoremove --yes'
#Install
alias sai="sudo apt install --yes"
#Network color display configuration
alias ipa='ip -c a'
#Gateway and routes color display configuration
alias ipr='ip -c route'
#Display all running services
alias run-services='systemctl --type=service --state=running'
#PowerOff
alias po='poweroff'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias cdev="cd /media/patrice/transcent-data/dev/"
alias cdtrib="cd /media/veracrypt1/infra-tribuda.pgit/"

alias tma="tmux attach-session"
alias ta="tmux attach"

