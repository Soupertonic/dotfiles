set fish_greeting
set -x EDITOR nvim

set -x PATH /sbin $PATH
set -x PATH /usr/sbin $PATH
set -x PATH /usr/bin $PATH
set -x PATH /usr/local/bin $PATH
set -x PATH /opt/llvm/bin/ $PATH
set -x PATH /opt/neovim/bin $PATH

alias ls="ls --color -lhA --group-directories-first"
alias ll="ls --color -lhA --group-directories-first"
alias scale="way-displays -s SCALE \"eDP-1\""
alias battery="cat /sys/class/power_supply/macsmc-battery/capacity"
