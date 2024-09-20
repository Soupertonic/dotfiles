export LANG=en_US.UTF-8
export HOMEBREW_NO_AUTO_UPDATE=1

alias ls="gls --color -lha --group-directories-first"
alias ll=ls
alias lt="eza -aT --color=always --group-directories-first --icons"

setopt PROMPT_SUBST
PROMPT='$ '
