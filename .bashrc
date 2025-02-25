#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -la --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export SUPPORT_DISK=/mnt/SupportDisk
export CONFIG_BACKUP=$SUPPORT_DISK/RepositoryDisk/Config
export GAMES_DISK=/mnt/DataDisk/GameLibrary
export DEV_DIR=$SUPPORT_DISK/RepositoryDisk/Development
export REPO_DIR=$SUPPORT_DISK/RepositoryDisk

export PATH="$PATH:$HOME/bin:$SUPPORT_DISK/Scripts"
