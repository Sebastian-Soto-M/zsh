# XDG DEFAULT FOLDERS

export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_DATA_DIRS=/usr/local/share:/usr/share
export XDG_CONFIG_DIRS=/etc/xdg

export HISTFILE="$XDG_DATA_HOME"/zsh/history
export HISTSIZE=60000
export ZDOTDIR=$HOME/.config/zsh
export ZSH=$HOME/.config/zsh/oh-my-zsh
export ZSH_CUSTOM=$ZSH/custom

export ASDF_DATA_DIR="$XDG_CONFIG_HOME"/asdf
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GOPATH="$XDG_DATA_HOME"/go
export TASKRC="$XDG_DATA_HOME"/task/taskrc
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export MYSQL_HISTFILE="$XDG_DATA_HOME"/mysql_history
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export SDKMAN_DIR="$XDG_DATA_HOME"/sdkman
export FLUTTER_DIR="$XDG_CONFIG_HOME"/cli_tools/flutter

# export PYENV_ROOT=$XDG_DATA_HOME/pyenv
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle

export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
# run this command: echo hsts-file \= "$XDG_CACHE_HOME"/wget-hsts >> "$WGETRC"

export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority

export SCRIPTS="$XDG_CONFIG_HOME/scripts"

export PATH="$FLUTTER_DIR/bin:$XDG_DATA_HOME/go/bin:$XDG_DATA_HOME/cargo/bin:$XDG_DATA_HOME/npm/bin:$HOME/.local/bin:"$HOME/.pub-cache/bin":$PATH"
export PATH="/usr/bin/python3:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"


# if [[ -n $VIRTUAL_ENV && -e "${VIRTUAL_ENV}/bin/activate" ]]; then
#   source "${VIRTUAL_ENV}/bin/activate"
# fi
