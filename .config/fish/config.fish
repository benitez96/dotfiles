
alias ls='exa --group-directories-first'
alias grep='grep --color=auto'
alias tree='exa -T'
alias cat='ccat -G Plaintext="blink" -G Keyword="purple" -G String="darkgreen" -G Punctuation="brown" -G Comment="faint"'
alias battery="upower -i `upower -e | grep BAT` | grep percentage | sed 's/ * / /g'"

alias vim='nvim'
alias v='nvim'

alias pgcli='python -m pgcli'

alias s='shutdown now'
alias r='reboot'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
