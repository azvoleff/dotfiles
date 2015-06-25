#! /bin/bash

# https://github.com/captbaritone/dotfiles/blob/master/vim/install.sh

echo "Updating/cleaning Vim plugins:"

# Thanks for greywh in #vim for this tip
vim -E -s <<-EOF
    :source ~/.vimrc
    :PlugInstall
    :PlugClean
    :qa
EOF
