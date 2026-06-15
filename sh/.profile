
# Add ~/bin to PATH if it exists and isn't already in PATH
if [ -d "$HOME/bin" ] && [ "${PATH#*"$HOME/bin"}" = "$PATH" ]; then
    PATH="$HOME/bin:$PATH"
fi

# Add ~/.local/bin to PATH if it exists and isn't already in PATH
if [ -d "$HOME/.local/bin" ] && [ "${PATH#*"$HOME/.local/bin"}" = "$PATH" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi

export PATH

# Define preferred editor to be Zed/Code
export EDITOR='code'
# export EDITOR='zed'
