setxkbmap -layout us -variant altgr-intl
# maps F1 to capsloks
xmodmap -e "remove Lock = Caps_Lock" -e "keycode 66 = F1"

#xmodmap ~/.Xmodmap

source ${HOME}/.aliases
source ${HOME}/.exports
source ${HOME}/.functions
source ${HOME}/.wsnet
