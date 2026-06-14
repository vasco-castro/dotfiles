# ~/.bash_profile - executed for login shells

# Source .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
fi

# User-specific environment
export PATH="$HOME/.local/bin:$HOME/bin:$PATH"

# Load local overrides if present
if [ -f "$HOME/.bash_profile.local" ]; then
    . "$HOME/.bash_profile.local"
fi
