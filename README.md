# dotfiles
mkdir dotfiles
git init --bare $HOME/dotfiles
echo "alias config='/usr/bin/git -git-dir=$HOME/dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
bash
config config --local status.showUntrackedFiles no
