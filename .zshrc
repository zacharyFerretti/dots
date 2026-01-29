HISTFILE=~/.zshhistfile
HISTSIZE=10000
SAVEHIST=35000

setopt autocd

# Sets up Vim keybinds
bindkey -v

# Setup Smart History Searching
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/zach/.zshrc'

alias mod-zsh="nvim ~/.zshrc"

# Assumes you have zoxide installed, if not comment this out.
alias cd="z"

# Assumes you have eza installed, if not comment this out.
alias ls="eza -s type --icons;"

autoload -Uz compinit
compinit

eval "$(zoxide init zsh)"
eval "$(fnm env)"

# Add newline before prompt, except for first prompt or after clear
# This is for keeping the UI clean while using starship pastel theme.
precmd() {
    if [ -z "$_NEW_LINE_BEFORE_PROMPT" ]; then
        _NEW_LINE_BEFORE_PROMPT=1
    elif [ "$_JUST_CLEARED" = 1 ]; then
        unset _JUST_CLEARED
    else
        print ""
    fi
}

clear() {
    _JUST_CLEARED=1
    command clear
}

# Starship prompt
eval "$(starship init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
