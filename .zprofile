#!/bin/zsh
# profile file. Runs on login. Environmental variables are set here.
export PATH="$PATH:$(find ~/.local/bin -type d | paste -sd ':' -)"
# Default programs:
export EDITOR="/usr/bin/nvim"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export XINITRC="$XDG_CONFIG_HOME/xinitrc"

#sudo bash -c "echo 0 > /sys/class/leds/platform::micmute/brightness"
#[ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1 && exec startx "$XINITRC"
if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec Hyprland 2>&1 /dev/null
fi
