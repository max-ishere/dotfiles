export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/nano
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/firefox
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
export PATH=$PATH:/home/mkr/.cargo/bin

source /etc/profile

# Flutter requires chrome
which chromium 1>/dev/null 2>/dev/null 3>/dev/null && export CHROME_EXECUTABLE=$(which chromium)
