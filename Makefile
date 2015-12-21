.PHONY: all bin default dotfiles etc install

all: dotfiles dir other

default: install

install: all

dotfiles:
	# add aliases for dotfiles
	for file in `ls -p | grep -v /`; do\
		f=$$(basename $$file);\
		rm -fr $(HOME)/.$$f; \
		ln -sfn `pwd`/$$file $(HOME)/.$$f; \
		echo `pwd`/$$file $(HOME)/.$$f; \
	done
	@rm -fr $(HOME)/.Makefile

dir:
	@rm -fr $(HOME)/.i3 $(HOME)/.bin $(HOME)/.irssi
	@ln -s `pwd`/i3 $(HOME)/.i3
	@ln -s `pwd`/bin $(HOME)/.bin
	@ln -s `pwd`/irssi $(HOME)/.irssi

other:
	@rm -fr $(HOME)/.config/terminator/config
	@rm -fr $(HOME)/.config/user-dirs.dirs
	@rm -fr $(HOME)/.local/share/applications/defaults.list
	@mkdir -p $(HOME)/.config/terminator
	@mkdir -p $(HOME)/.local/share/applications
	@ln -s `pwd`/config/terminator/config $(HOME)/.config/terminator/config
	@ln -s `pwd`/user-dirs.dirs $(HOME)/.config/user-dirs.dirs
	@ln -s `pwd`/defaults.list $(HOME)/.local/share/applications/defaults.list




