if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

export EDITOR="nvim"

alias ls="ls --color -lhA --group-directories-first"
alias ll="ls --color -lhA --group-directories-first"

alias battery="cat /sys/class/power_supply/macsmc-battery/capacity"

export PATH=/usr/bin:$PATH
