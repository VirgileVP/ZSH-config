#!/usr/bin/env zsh 
#local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

setopt promptsubst

autoload -U add-zsh-hook
ROOT_ICON_COLOR=$FG[103]
MACHINE_NAME_COLOR=$FG[208]
PROMPT_SUCCESS_COLOR=$FG[103]
PROMPT_FAILURE_COLOR=$FG[124]
PROMPT_VCS_INFO_COLOR=$FG[242]
PROMPT_PROMPT=$FG[208]
GIT_DIRTY_COLOR=$FG[124]
GIT_CLEAN_COLOR=$FG[148]
GIT_PROMPT_INFO=$FG[148]

# Hash
ROOT_ICON="# "
if [[ $EUID -ne 0 ]] ; then
	ROOT_ICON=""
fi


PROMPT='%{$MACHINE_NAME_COLOR%}╭─%n%{$ROOT_ICON_COLOR%}%{$reset_color%} %{$PROMPT_SUCCESS_COLOR%}% at %{$MACHINE_NAME_COLOR%}%m➜ %{$reset_color%} %{$PROMPT_SUCCESS_COLOR%}%~%{$reset_color%}${git_info} %{$MACHINE_NAME_COLOR%}${ruby_env}
╰─%{$FG[251]%} '

#PROMPT="╭─%{$FG[040]%}%n%{$reset_color%} %{$FG[239]%}at%{$reset_color%} %{$FG[033]%}$(box_name)%{$reset_color%} %{$FG[239]%}in%{$reset_color%} %{$terminfo[bold]$FG[226]%}%~%{$reset_color%}${git_info} %{$FG[239]%}${ruby_env}
#╰─${prompt_char}%{$reset_color%} "

#RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX=": "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$GIT_PROMPT_INFO%} :"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$GIT_DIRTY_COLOR%}✘"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$GIT_CLEAN_COLOR%}✔"

ZSH_THEME_GIT_PROMPT_ADDED="%{$FG[103]%}✚%{$rset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$FG[103]%}✹%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$FG[103]%}✖%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$FG[103]%}➜%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$FG[103]%}═%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$FG[103]%}✭%{$reset_color%}"
