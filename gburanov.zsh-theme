local       date="┏$fg[green]%T $fg[cyan]%n@%m"
local ret_status="┗%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"

PROMPT="${date} %{$fg[cyan]%}%d %c $(git_prompt_info)
${ret_status} %{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
