
export EDITOR=nvim

export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
export PATH=$JAVA_HOME/vin:$PATH

# TODO(schuyler): move aliases to their own dotfile
alias reload='source ~/.bashrc'
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
alias python='python3'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

