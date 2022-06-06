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

# Aliases.
alias dotrepo='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

# Keybinds.
bind '"\C-p":"new-project-session\n"'

# Golang env.
export PATH=$PATH:/usr/local/go/bin

# Node env.
VERSION=v16.15.0
DISTRO=linux-x64
export PATH=/usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin:$PATH

# FZF config.
export FZF_DEFAULT_COMMAND="find * -type f -not -path '*/\.*'"
export FZF_DEFAULT_OPTS="--no-height"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'batcat --color=always --line-range :50 {}'"
export FZF_ALT_C_COMMAND="find * -type d -not -path '*/\.*'"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -50'"

# Flutter env.
export PATH="$PATH:`pwd`/flutter/bin"
