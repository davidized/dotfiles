autoload -U colors && colors

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[green]%}"
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

export VIRTUAL_ENV_DISABLE_PROMPT='1'

function virtualenv_info() {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') ';
}

# user@host in directory on branch
# virtualenv [0] $
export PROMPT='%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[yellow]%}%m%{$reset_color%} in %{$fg[blue]%}%~%{$reset_color%}$(git_prompt_info)
%{$fg[white]%}$(virtualenv_info)%{$reset_color%}%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )$(prompt_char) '
