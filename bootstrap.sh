#! /bin/bash

# Settings
dotfiles="$HOME/dotfiles"
dotrepo="http://github.com/azvoleff/dotfiles"

# Do the dot files
if [ ! -d "$dotfiles" ]; then
    printf "Fetching dotfiles...\n"
    git clone "$dotrepo" "$dotfiles"
fi;

printf "Installing/updating dotfiles...\n"
source "$dotfiles/install.sh"
printf "\nTo get the most recent bashrc need to issue \`bash\`\n"
