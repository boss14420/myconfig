# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' glob 'NUMERIC == 1'
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' max-errors 1
zstyle ':completion:*' menu select
zstyle :compinstall filename '/home/boss14420/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

[ ! "$UID" = "0" ] && archey -c cyan
[  "$UID" = "0" ] && archey -c red

alias mgcc='sb2 -t mer-core gcc'
alias mg++='sb2 -t mer-core g++'
[ "$DISPLAY" = ":0.0" ] && alias fluxbox-reload="kill -SIGHUP `xprop -root _BLACKBOX_PID | awk '{print $3}'`"

# pulseaudio --start &> /dev/null &

export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

if [[ $(tty) = /dev/tty2 ]]; then
    #export TERM="fbterm"
    fcitx-fbterm-helper -l
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# tmux
alias tmux="TERM=screen-256color-bce tmux"
