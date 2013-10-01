autoload -U colors && colors
autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git svn git-svn


# PROMPT="%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}$(box_name)%{$reset_color%} in %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info)
# $(virtualenv_info)%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )$ "



#local return_status="%{$fg[red]%}%(?..✘)%{$reset_color%}"
#RPROMPT="${return_status}%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✔"


# export PROMPT="%{$fg[blue]%}%c \
# $(git_prompt_info)\
# %{$reset_color%} \
# %{$fg[white]%}%(!.#.⚡)%{$reset_color%} "



export PROMPT="%{$fg[magenta]%}%n%{$reset_color%} in %{$fg_bold[green]%}%~%{$reset_color%} $ZSH_THEME_GIT_BRANCH
%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )%#"


