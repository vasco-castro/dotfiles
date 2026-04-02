#!/usr/bin/env bash
# install.sh - Symlink dotfiles into the home directory

set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Map of source file -> symlink target in $HOME
declare -A DOTFILES=(
    ["bash/.bashrc"]="$HOME/.bashrc"
    ["bash/.bash_profile"]="$HOME/.bash_profile"
    ["git/.gitconfig"]="$HOME/.gitconfig"
    ["git/.gitignore_global"]="$HOME/.gitignore_global"
    ["vim/.vimrc"]="$HOME/.vimrc"
    ["zsh/.zshrc"]="$HOME/.zshrc"
)

backup_and_link() {
    local src="$1"
    local dest="$2"

    # Back up existing file if it is not already our symlink
    if [ -e "$dest" ] && [ ! -L "$dest" ]; then
        echo "  Backing up existing $dest -> ${dest}.bak"
        mv "$dest" "${dest}.bak"
    fi

    # Remove stale symlink
    if [ -L "$dest" ]; then
        rm "$dest"
    fi

    ln -s "$src" "$dest"
    echo "  Linked $dest -> $src"
}

echo "Installing dotfiles from $DOTFILES_DIR"
echo ""

for rel_src in "${!DOTFILES[@]}"; do
    abs_src="$DOTFILES_DIR/$rel_src"
    dest="${DOTFILES[$rel_src]}"
    backup_and_link "$abs_src" "$dest"
done

echo ""
echo "Done! Restart your shell or source the relevant config files to apply changes."
