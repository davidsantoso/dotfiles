PROMPT=$'
%{$fg[blue]%}%/%{$reset_color%} $(git_prompt_info)$(bzr_prompt_info)%{$reset_color%}
%{$fg_bold[black]%}➜%{$reset_color%} '

PROMPT2="%{$fg_blod[black]%}%_> %{$reset_color%}"

ZSH_THEME_SCM_PROMPT_PREFIX="%{$fg[dark_grey]%}("
ZSH_THEME_GIT_PROMPT_PREFIX=$ZSH_THEME_SCM_PROMPT_PREFIX
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$reset_color%}"
