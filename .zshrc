# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

######################
# CUSTOM USR CONFIGS #
######################
DISABLE_AUTO_TITLE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
# Use vim keys in tab complete menu:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

######################
# ZSH PLUGIN CONFIGS #
######################
# Path to your oh-my-zsh installation.
export ZSH="$XDG_CONFIG_HOME"/zsh/oh-my-zsh
ZSH_THEME="powerlevel10k/powerlevel10k"
# TMUX configuration
# ZSH_TMUX_CONFIG="$XDG_CONFIG_HOME"/tmux/tmux.conf
# ZSH_TMUX_AUTOCONNECT=true
# ZSH_TMUX_UNICODE=true
# ZSH_TMUX_AUTOSTART=true
# ZSH_TMUX_AUTOQUIT=true
# ALIAS_FINDER
ZSH_ALIAS_FINDER_AUTOMATIC=true

plugins=(
    # tmux
    alias-finder
    brew
    colored-man-pages
    fast-syntax-highlighting
    fd
    flutter
    fzf
    git
    gitignore
    golang
    jenv
    man
    mvn
    ng
    node
    npm
    pip
    web-search
)
source $ZSH/oh-my-zsh.sh
source $ZDOTDIR/alias.zsh

###########################
# TERMINAL TOOLS  CONFIGS #
###########################
# bat
export BAT_THEME="gruvbox-dark"
export BAT_STYLE="numbers,grid"
# asdf
#. $ASDF_DATA_DIR/asdf.sh
# FZF
export FZF_BASE=/usr/bin/fzf
export FD_OPTIONS="-pi --follow --exclude .git --exclude node_modules --exclude __pycache__"
export FZF_DEFAULT_OPTS="
--no-mouse --height 50% -1 --reverse --multi --inline-info
--preview='[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --style=numbers --color=always {} || cat {} ) 2> /dev/null | head -300'
--preview-window='right:hidden:wrap'
--bind='f3:execute(bat --style=numbers {} || less -f {}),f2:toggle-preview,ctrl-d:half-page-down,ctrl-u:half-page-up,ctrl-a:select-all+accept'
--color=16
"
export FZF_CTRL_T_OPTS="--select-1 --exit-0"
export FZF_ALT_C_OPTS="--select-1 --exit-0"
export FZF_DEFAULT_COMMAND="fdfind -t f -t d $FD_OPTIONS"
export FZF_CTRl_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fdfind --type d $FD_OPTIONS"

######################
#  END-FILE CONFIGS  #
######################
export GIT_PAGER="bat"
export EDITOR="nvim"
export TERM="screen-256color"

[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"
# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# NVM configuration
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# PYENV configuration
eval "$(pyenv init --path)"
# eval "$(pyenv virtualenv-init -)"

test -e "${ZDOTDIR}/.iterm2_shell_integration.zsh" && source "${ZDOTDIR}/.iterm2_shell_integration.zsh"

