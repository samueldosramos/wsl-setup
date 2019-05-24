#!/bin/bash
#
# Bash profile with paths and aliases

# ========== Aliases ==========
# List npm packages installed globally
alias npmlist="npm list -g --depth=0"

# Update npm packages globally
alias npmupdate="npm update -g"

# Undo the last commit
alias uncommit="git reset HEAD~1"

# LS aliases
alias ls="ls -GF"
alias ll="ls -lG"
alias la="ls -aGF"

# ========== Others resources ==========
# Export terminal colors
export TERM="xterm-256color"
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$(parse_git_branch) $ "
export GREP_OPTIONS="--color=auto"
export GREP_COLOR="4;33"
export CLICOLOR="auto"

# Git branch in terminal
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
