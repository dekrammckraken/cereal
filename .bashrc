#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.config/.dirs

export GE_PREFIX=/mnt/DataDisk/GameLibrary/Prefix/
export PATH="$PATH:$HOME/bin:$REPO_DIR/Scripts:$HOME/.cargo/bin"

export GTK_THEME=Adwaita:dark
export FONTCONFIG_PATH="/usr/share/fonts:~/.local/share/fonts"
export MOZ_ENABLE_WAYLAND=1
export MANGOHUD=1
export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=Hyprland
export GTK_USE_PORTAL=1
export XDG_DESKTOP_PORTAL=gtk
export ELECTRON_OZONE_PLATFORM_HINT=wayland

eval "$(starship init bash)"
#fzf colors
export FZF_DEFAULT_OPTS="--color=fg:#d5c4a1,bg:#282828,hl:#b8bb26,fg+:#1d2021,bg+:#d79921,hl+:#83a598"
export OLLAMA_MODELS="$HOME/Models"
#hostnamectl

alias go='source $SH_DIR/env_dir'
alias ls='ls -la --color=auto'
alias grep='grep --color=auto'
alias v='nvim'
PS1='[\u@\h \W]\$ '
