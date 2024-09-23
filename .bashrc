# .bashrc

export EDITOR="nvim"

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

alias ls="ls --color -lhA --group-directories-first"
alias ll="ls --color -lhA --group-directories-first"

alias battery="cat /sys/class/power_supply/macsmc-battery/capacity"

export PATH="$HOME/.cargo/bin:$PATH"
export PATH=/usr/bin:$PATH

. "$HOME/.cargo/env"
