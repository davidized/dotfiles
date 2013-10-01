autoload -U colors && colors

# PROMPT="%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}$(box_name)%{$reset_color%} in %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info)
# $(virtualenv_info)%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )$ "

#local return_status="%{$fg[red]%}%(?..✘)%{$reset_color%}"
#RPROMPT="${return_status}%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✔"

# get the name of the branch we are on
function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2>/dev/null) || return
echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

# Checks if working tree is dirty
parse_git_dirty() {
  if [[ -n $(git status -s 2> /dev/null) ]]; then
echo "$ZSH_THEME_GIT_PROMPT_DIRTY"
  else
echo "$ZSH_THEME_GIT_PROMPT_CLEAN"
  fi
}

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    echo '%(!,#,$)'
}

# This keeps the number of todos always available the right hand side of my
# command line. I filter it to only count those tagged as "+next", so it's more
# of a motivation to clear out the list.
todo_count(){
  if $(which todo &> /dev/null) 
  then
    num=$(echo $(todo ls $1 | wc -l))

    let todos=num-2
    if [[ $todos != 0 ]] then
      echo "$todos"
    else
      echo "0"
    fi

  else
      echo ""
  fi
}

function todo_prompt() {
  local COUNT=$(todo_count $1);
  if [[ $COUNT != 0 ]] 
  then
    echo "$1: $COUNT";
  else
    echo "";
  fi
}

function notes_count() {
  if [[ -z $1 ]]; then
local NOTES_PATTERN="@TODO|@FIXME|@HACK";
  else
local NOTES_PATTERN=$1;
  fi
grep -ERn "\b($NOTES_PATTERN)\b" {app,config,lib,spec,test,notes} 2>/dev/null | wc -l | sed 's/ //g'
}

function notes_prompt() {
  local COUNT=$(notes_count $1);
  if [ $COUNT != 0 ]; then
echo "$1: $COUNT";
  else
echo "";
  fi
}

# user@host in directory on branch
# virtualenv [0] $
export PROMPT='%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[yellow]%}%m%{$reset_color%} in %{$fg_bold[green]%}%~%{$reset_color%}$(git_prompt_info)
%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )$(prompt_char) '

set_prompt () {
  export RPROMPT="$(notes_prompt @TODO) %{$fg_bold[yellow]%}$(notes_prompt @HACK)%{$reset_color%} %{$fg_bold[red]%}$(notes_prompt @FIXME)%{$reset_color%} %{$fg_bold[white]%}$(todo_prompt +next)%{$reset_color%}"
}

precmd() {
  set_prompt
}
