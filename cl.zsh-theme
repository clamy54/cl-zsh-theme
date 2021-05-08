if [[ $UID == 0 || $EUID == 0 ]]; then
  local user='%{$FG[196]%}%n@%{$FG[231]%}%m%{$reset_color%}'
else
  local user='%{$FG[227]%}%n@%{$FG[231]%}%m%{$reset_color%}'
fi

PROMPT="${user} %(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
