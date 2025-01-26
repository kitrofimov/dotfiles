# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'

alias grep='grep --color=auto'

# Get the table of contents of a manpage
# https://askubuntu.com/questions/1196358/is-there-any-way-to-get-table-of-contents-of-a-man-page
man-toc() {
    if [ $# -eq 0 ]; then
        echo "no arguments"
	return 1
    fi
    zcat $(man -w "$1") | grep '^\.SH'
}

# See https://harfangk.github.io/2016/09/18/manage-dotfiles-with-a-git-bare-repository.html
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

PS1='[\u@\h \W]\$ '
