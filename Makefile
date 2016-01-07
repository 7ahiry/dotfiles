.PHONY: all default dotfiles dir other

all: dotfiles dir other

default: install

install: all

dotfiles:
	# add aliases for dotfiles
	@echo "Install oh-my-zsh"
	@sh -c "$$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	@echo "Create symlinks ..."
	@for file in `ls -p | grep -v /`; do\
		f=$$(basename $$file);\
		rm -fr $(HOME)/.$$f; \
		ln -sfn `pwd`/$$file $(HOME)/.$$f; \
	done
	@rm -fr $(HOME)/.Makefile

dir:
	@echo "Create directories symlinks ..."
	@rm -fr $(HOME)/.i3 $(HOME)/.bin $(HOME)/.irssi
	@ln -fns `pwd`/i3 $(HOME)/.i3
	@ln -fns `pwd`/bin $(HOME)/.bin
	@ln -fns `pwd`/irssi $(HOME)/.irssi

other:
	@echo "Create configuration symlinks ..."
	@rm -fr $(HOME)/.config/terminator/config
	@rm -fr $(HOME)/.config/user-dirs.dirs
	@rm -fr $(HOME)/.local/share/applications/defaults.list
	@mkdir -p $(HOME)/.config/terminator
	@mkdir -p $(HOME)/.local/share/applications
	@ln -fns `pwd`/config/terminator/config $(HOME)/.config/terminator/config
	@ln -fns `pwd`/user-dirs.dirs $(HOME)/.config/user-dirs.dirs
	@ln -fns `pwd`/defaults.list $(HOME)/.local/share/applications/defaults.list




