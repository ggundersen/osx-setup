# Shortcuts
alias ll='ls -la'
alias cl='clear'
alias ls='ls -p'
alias chrome='open -a "Google Chrome"'
alias hosts='sudo vi /private/etc/hosts'
alias grep='grep --color -E'

function cl { cd $1 && ls; }
export -f cl

function dockerclean { docker rmi -f $(docker images -f dangling=true -q); }
export -f dockerclean

function weather { curl -4 http://wttr.in/New_York; }
export -f weather

export JAVA_HOME=$(/usr/libexec/java_home)

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
export PATH="Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH="/opt/local/bin:/opt/local/sbin:${PATH}"

# Docker
export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://192.168.99.100:2376"
export DOCKER_CERT_PATH="/Users/gwg/.docker/machine/machines/default"
export DOCKER_MACHINE_NAME="default"
