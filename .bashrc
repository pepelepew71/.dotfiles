# custom bash_completion
if [ -d ~/.bash_completion.d ]; then
  for f in ~/.bash_completion.d/*; do
    [ -f "$f" ] && . "$f"
  done
fi

# ibus-chewing
export QT_IM_MODULE=ibus
export GTK_IM_MODULE=ibus
export XMODIFIERS="@im=ibus"

# starship
eval "$(starship init bash)"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# path
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH
export PATH=$PATH:$HOME/.dotfiles/scripts:/usr/local/lib:$HOME/.local/bin

# Qt6
export DISABLE_QT5_COMPAT=1

# python
export PYTHONDONTWRITEBYTECODE=1
export PYTHONUNBUFFERED=1

# vscode
export PYDEVD_CONTAINER_RANDOM_ACCESS_MAX_ITEMS=1000

# nas
export NAS_IP=10.0.0.102
export NAS_PATH=/volume1/Videos
export NAS_MOUNT_PATH=~/Videos/nas
