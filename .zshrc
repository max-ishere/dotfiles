# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

source ~/.profile
export PATH="$PATH:$HOME/.config/composer/vendor/bin"

alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias doom='$HOME/.emacs.d/bin/doom'
alias cat='bat'
# passff
export PATH="$PATH:/home/mkr/.mozilla/native-messaging-hosts"
