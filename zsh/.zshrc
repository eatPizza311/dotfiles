# =====================
# Z-plug Plugin Manager
# =====================

# Source Z-plug
source ~/.zplug/init.zsh

export PATH="/Users/chihying/Downloads/nvim-macos/bin:$PATH"

# Plugins
zplug 'romkatv/powerlevel10k', as:theme, depth:1
zplug 'zsh-users/zsh-autosuggestions'
zplug 'zsh-users/zsh-syntax-highlighting', defer:2
zplug 'zsh-users/zsh-history-substring-search'
zplug 'marlonrichert/zsh-autocomplete'
zplug 'hlissner/zsh-autopair'

# Check and install plugins if necessary
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo
        zplug install
    fi
fi

# Load plugins
zplug load

# =====================
# Keybindings and History
# =====================

# Keybindings for history substring search
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
# zsh-autocomplete configure
# Down arrow:
bindkey '\e[B' down-line-or-select
bindkey '\eOB' down-line-or-select

# History settings
SAVEHIST=1000
export HISTFILE=~/.zsh_history
setopt share_history

# Case-insensitive tab completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# =====================
# Custom Aliases and Functions
# =====================

alias rm='rm -r'
alias cp='cp -r'
alias ls='ls -hlF --color=auto'
alias ..='cd ../'
alias tree="tree -alI 'node_modules|.git'"
alias grep='grep --color=always'
alias grepFind='grep --exclude-dir=node_modules -nr . -e'
alias mkdir='mkdir -p'

# =====================
# Powerlevel10k Customization
# =====================

# Load Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize the prompt, run `p10k configure` or edit ~/.p10k.zsh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# =====================
# Additional Customizations
# =====================

# Add your additional customizations below this section

# Example: Export environment variables
# export MY_VARIABLE="example_value"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/chihying/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/chihying/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/chihying/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/chihying/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
