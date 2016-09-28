#setxkbmap -layout us -variant altgr-intl
# maps F1 to capsloks
#xmodmap -e "remove Lock = Caps_Lock" -e "keycode 66 = F1"

#xmodmap ~/.Xmodmap

#WARNING **: Couldn't connect to accessibility bus:
#Failed to connect to socket /tmp/dbus-xxfluS2Izg: Connection refused
export NO_AT_BRIDGE=1

source ${HOME}/.aliases
source ${HOME}/.exports
source ${HOME}/.functions
source ${HOME}/.wsnet
