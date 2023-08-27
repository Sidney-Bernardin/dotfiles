# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi



# Aliases
alias df='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' # Quickly access dotfiles repository.

# Binds
bind '"\C-p":"sessionizer\n"'

# Golang ENV
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin:$CARGO

# Node ENV
VERSION=v16.17.0
DISTRO=linux-x64
export PATH=/usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin:$PATH

# Rust ENV
# . "$HOME/.cargo/env"

# Starship Shell Prompt
export STARSHIP_CONFIG=~/.config/starship/basic.toml
eval "$(starship init bash)"
