# My Dotfiles

## Installation

```
cd $HOME
echo ".cfg" >> .gitignore
git clone --bare https://github.com/jos3fka/dotfiles.git
alias config "/usr/bin/git" --git-dir=$HOME/.cfg/ --work-tree=$HOME
echo `!!` >> ~/.zshrc
config config --local status.showUntrackedFiles no
config checkout
```
