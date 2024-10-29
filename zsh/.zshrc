# Zinit instalation
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
	mkdir -p "$(dirname $ZINIT_HOME)"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

# Custom zsh
[ -f "$HOME/.config/zsh/custom.zsh" ] && source "$HOME/.config/zsh/custom.zsh"

# Aliases
[ -f "$HOME/.config/zsh/aliases.zsh" ] && source "$HOME/.config/zsh/aliases.zsh"

# fnm
FNM_PATH="/home/carlosgab/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/carlosgab/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# tmux auto-start
if [[ -z "$TMUX" ]] && [ "$TERM" != "linux" ]; then
    tmux attach-session -t default || tmux new-session -s default
fi

