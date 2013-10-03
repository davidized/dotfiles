# git aliases
alias g='git'
alias gst='git status'
alias gc='git commit -v'
alias gc!='git commit -v --amend'
alias gca='git commit -v -a'
alias gca!='git commit -v -a --amend'
alias gcmsg='git commit -v -m'
alias gco='git checkout'
alias gcom='git checkout master'
alias gb='git branch'
alias ga='git add'
alias gm='git merge'
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'

function current_branch() {
  ref=$(git symbolic-ref HEAD 2>/dev/null) || \
  ref=$(git rev-parse --short HEAD 2>/dev/null) || return
  echo ${ref#refs/heads/}
}

# these aliases take advantage of the previous function
alias ggpull='git pull origin $(current_branch)'
alias ggpush='git push origin $(current_branch)'