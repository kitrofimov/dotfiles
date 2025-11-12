# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# === ALIASES & VARIABLES ===

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias grep='grep --color=auto'

# https://harfangk.github.io/2016/09/18/manage-dotfiles-with-a-git-bare-repository.html
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

export PS1="\[\e[38;5;245m\]\u\[\e[38;5;247m\]@\[\e[38;5;249m\]\h \[\e[38;5;254m\]\W \[\033[0m\]$ "
export EDITOR=nvim

# === HISTORY ===

# Don't store duplicate or space-prefixed commands
HISTCONTROL=ignoreboth

# Bigger history file
HISTSIZE=5000
HISTFILESIZE=10000

# Save and reload history between sessions
shopt -s histappend
PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"

# Use `fzf` for history search on Ctrl+R
__fzf_history__() {
  local selected
  selected=$(history | fzf +s --tac | sed 's/ *[0-9]* *//')
  READLINE_LINE=$selected
  READLINE_POINT=${#READLINE_LINE}
}
bind -x '"\C-r": __fzf_history__'

# === SOURCES ===

# Cargo (Rust)
. "$HOME/.cargo/env"

# Use bash-completion, if available, and avoid double-sourcing
[[ $PS1 &&
  ! ${BASH_COMPLETION_VERSINFO:-} &&
  -f /usr/share/bash-completion/bash_completion ]] &&
    . /usr/share/bash-completion/bash_completion

