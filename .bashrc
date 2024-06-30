GREEN="\[$(tput setaf 2)\]"
 CYAN="\[$(tput setaf 6)\]"
RESET="\[$(tput sgr0)\]"

export LANG="en_US.UTF-8"
export PS1="${GREEN}\u@\h${RESET}:${CYAN}\w${RESET}\$ "
export EDITOR="nvim"

alias  cp="cp -i"
alias  ls="ls --color=auto"
alias  ll="ls -l"
alias lla="ls -lA"
alias  la="ls -A"
alias   l="ls -CF"

# alias for managing dotfiles
alias dotfiles="/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME""

# JAVA
export JAVA_HOME=/opt/jdk-22.0.1
export PATH=$PATH:$JAVA_HOME/bin

