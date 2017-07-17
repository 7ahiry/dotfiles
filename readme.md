This repository contains all my dotfiles

It is mainly inspired by the dotfiles of [jfrazelle](https://github.com/jfrazelle/).

Requirements and warnings:
* Do not blindly use the files in this repository
* Set `zsh` as your defaults shell and install `oh_my_zsh`
* Make sure `i3`, `terminator`, `inconsolata-ttf`, ... are installed


To install it you need to:
```
make
```

or

```
cd ~
git clone https://git.framasoft.org/7ahiry/dotfiles.git ~/.dotfiles
ln -s ~/.dotfiles/aliases ~/.aliases
ln -s ~/.dotfiles/bashrc ~/.bashrc
ln -s ~/.dotfiles/exports ~/.exports
ln -s ~/.dotfiles/functions ~/.functions
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/login_conf ~/.login_conf

ln -s ~/.dotfiles/wsnet ~/.wsnet
ln -s ~/.dotfiles/xinitrc ~/.xinitrc
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf

ln -s ~/.dotfiles/i3 ~/.i3
ln -s ~/.dotfiles/bin ~/.bin
ln -s ~/.dotfiles/irssi ~/.irssi

mkdir .config/terminator
mkdir -p .local/share/applications
ln -s ~/.dotfiles/terminator.config ~/.config/terminator/config
ln -s ~/.dotfiles/user-dirs.dirs ~/.config/user-dirs.dirs
ln -s ~/.dotfiles/defaults.list ~/.local/share/applications/defaults.list
```

You must install : [zsh autosuggestion](https://github.com/zsh-users/zsh-autosuggestions):
```
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
```

and add the following to your `.zshrc`
```
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
```
