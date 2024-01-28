eval $(thefuck --alias)

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '[%b] '

setopt PROMPT_SUBST
PROMPT='%F{cyan}[%D{%I:%M%p}]%f %F{magenta}%n%f %F{red}${vcs_info_msg_0_}%f%F{blue}%~%f %F{blue}%(!.#.$)%f '


alias python3=/opt/homebrew/bin/python3
alias python=/opt/homebrew/bin/python3

export PATH=$(brew --prefix)/bin:$(brew --prefix)/sbin:$PATH
