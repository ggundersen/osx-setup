# Shortcuts
alias ll='ls -1'
alias cl='clear'
alias hosts='sudo vi /private/etc/hosts'
alias chrome='open -a "Google Chrome"'
alias hosts='sudo vi /private/etc/hosts'
alias grep='grep --color -E'

function weather { curl -4 http://wttr.in/New_York; }
export -f weather

# Slurm specific shortcuts
alias sj='scontrol show job'
alias sq='squeue -u gwg3'

function st() { tail -f $(scontrol show job "$1" | grep -Po "(?<=StdErr=).*") }
export -f st

# Terminal colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

function env-rm () 
{ 
    conda env remove --yes --quiet --name "$1"
}
