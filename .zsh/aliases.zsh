alias ls='ls -G'


# git
alias g='git'
compdef g=git
alias gst='git status'
compdef _git gst=git-status
alias gc='git commit -v'
compdef _git gc=git-commit
alias gc!='git commit -v --amend'
compdef _git gc!=git-commit
alias gca='git commit -v -a'
compdef _git gc=git-commit
alias gca!='git commit -v -a --amend'
compdef _git gca!=git-commit
alias gcmsg='git commit -v -m'
compdef _git gcmsg='git commit -v -m'
alias gco='git checkout'
compdef _git gco=git-checkout
alias gcom='git checkout master'
alias gb='git branch'
compdef _git gb=git-branch
alias ga='git add'
compdef _git ga=git-add
alias gm='git merge'
compdef _git gm=git-merge
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'

function current_branch() {
  ref=$(git symbolic-ref HEAD 2>/dev/null) || \
  ref=$(git rev-parse --short HEAD 2>/dev/null) || return
  echo ${ref#refs/heads/}
}

# these aliases take advantage of the previous function
alias ggpull='git pull origin $(current_branch)'
compdef ggpull=git
alias ggpush='git push origin $(current_branch)'
compdef ggpush=git



export TODOTXT_DEFAULT_ACTION=ls
alias todo='/usr/local/bin/todo.sh -c -d ~/.todo/config'
alias t='/usr/local/bin/todo.sh -c -d ~/.todo/config'
