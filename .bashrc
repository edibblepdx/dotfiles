# .bashrc

echo -e "\033[1;36m \n Good Morning ♥ \n"

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
. "$HOME/.cargo/env"

# asdf vm
. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"

# Nvim
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Deno
[ -f "$HOME/.deno/env" ] && . "$HOME/.deno/env"

# Playdate
export PLAYDATE_SDK_PATH="$HOME/playdate/PlaydateSDK-2.6.2"
export PATH="$PATH:/$PLAYDATE_SDK_PATH/bin"

# Golang
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$(go env GOPATH)/bin"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"

# Haskell
[ -f "/home/dibble/.ghcup/env" ] && . "/home/dibble/.ghcup/env"

# My file of aliases
[ -f "$HOME/.aliases" ] && . "$HOME/.aliases"

# Default editor
export EDITOR="/usr/bin/nvim"
