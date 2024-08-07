# =====================
#  P10k Customization
# =====================
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# =====================
#     Plugin Manager
# =====================
# Directory to store zinit and Plugin
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Manual install Zinit if it's not installed
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"

# Source/Load Zinit
source "${ZINIT_HOME}/zinit.zsh"


# =====================
#       Plugins
# =====================
# Load powerlevel10k theme
zinit ice depth"1" # git clone depth
zinit light romkatv/powerlevel10k
# Basic functionality
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
# fzf auto completion menu
zinit light Aloxaf/fzf-tab
zinit load djui/alias-tips
# Oh my Zsh plugins
zinit snippet OMZP::git


# =====================
#      Keybindings
# =====================
bindkey -e # Emacs mode
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward


# =====================
#       Aliases
# =====================
alias ls='ls -hlF --color=auto'
alias ..='cd ../'
alias tree="tree -alI 'node_modules|.git'"
alias grep='grep --color=always'
alias grepFind='grep --exclude-dir=node_modules -nr . -e'
alias mkdir='mkdir -p'


# =====================
#       History
# =====================
HISTSIZE=5000
SAVEHIST=$HISTSIZE
HISTDUP=erase
export HISTFILE=~/.zsh_history
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_save_no_dups
setopt hist_find_no_dups


# =====================
#  Other Customizations
# =====================
# Load auto completions
autoload -U compinit && compinit
zinit cdreplay -q
# Case-insensitive tab completion and coloring
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Fuzzy finding shell integration
# This need fzf installed
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"
