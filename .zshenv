## -- ibus-chewing
export QT_IM_MODULE=ibus
export GTK_IM_MODULE=ibus
export XMODIFIERS="@im=ibus"

## -- pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

## -- i3blocks
export SCRIPT_DIR=($HOME/.config/i3blocks)
