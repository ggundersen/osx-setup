# Shortcuts
alias ll='ls -la'
alias chrome='open -a "Google Chrome"'
alias hosts='sudo vi /private/etc/hosts'
alias grep='grep --color -E'

function cl { cd $1 && ls; }
export -f cl

export PATH
