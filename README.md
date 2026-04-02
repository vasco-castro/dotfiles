# dotfiles

My personal dotfiles repository.

## Structure

```
dotfiles/
├── bash/
│   ├── .bashrc          # Interactive shell config
│   └── .bash_profile    # Login shell config
├── git/
│   ├── .gitconfig       # Git settings and aliases
│   └── .gitignore_global # Global gitignore patterns
├── vim/
│   └── .vimrc           # Vim configuration
├── zsh/
│   └── .zshrc           # Zsh configuration
└── install.sh           # Symlink installer
```

## Installation

Clone the repository and run the install script:

```bash
git clone https://github.com/vasco-castro/dotfiles.git ~/dotfiles
cd ~/dotfiles
bash install.sh
```

The installer creates symlinks from `~/<dotfile>` to the corresponding file in
this repository. Any existing file that would be overwritten is backed up with
a `.bak` extension beforehand.

## Local overrides

Machine-specific settings that should not be committed can be placed in local
override files which are sourced automatically but excluded from version
control:

| Shell | Override file |
|-------|--------------|
| Bash  | `~/.bashrc.local` / `~/.bash_profile.local` |
| Zsh   | `~/.zshrc.local` |

## Customisation

Before running `install.sh` update `git/.gitconfig` with your own name and
email address:

```ini
[user]
    name = Your Name
    email = your@email.com
```
