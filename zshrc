# Added by autojump install.sh
source /etc/profile.d/autojump.zsh


# prompt
autoload -U promptinit
promptinit
prompt clint

# modified commands
alias diff='colordiff'              # requires colordiff package
export GREP_COLOR="1;33"
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias more='less'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias nano='nano -w'
alias ping='ping -c 5'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../../'
alias .....='cd ../../../../'
#alias cp='cp -iv'
alias rmv='rsync -v --progress --remove-source-files'
#alias mv='mv -iv'
#alias rm='rm -iv'
#alias rmdir='rmdir -v'
#alias ln='ln -v'
alias chmod="chmod -c"
alias chown="chown -c"
alias view='vim -v'
alias nautilus='nautilus --no-desktop'
alias nemo='nemo --no-desktop'

# new commands
alias da='date "+%A, %B %d, %Y [%T]"'
alias du1='du --max-depth=1'
alias hist='history | grep $1'      # requires an argument
alias openports='netstat --all --numeric --programs --inet'
#alias pg='ps -Af | grep $1'        # requires an argument
alias pg='ps -eo pid,tid,class,rtprio,ni,pri,psr,pcpu,stat,wchan:14,args | grep $1'

alias grub-update='grub-mkconfig -o /boot/grub/grub.cfg'
alias update-grub='grub-mkconfig -o /boot/grub/grub.cfg'
#alias update-fluxkey="kill -s USR2 `xprop -root _BLACKBOX_PID | awk '{print $3}'`" 2> /dev/null
alias kindle='python2 /media/Document/Document/program/Kindelabra/Kindelabra.py'
alias dedrm='python2 /usr/bin/dedrm $1 $1.dedrm 04E55893LS'
alias kw='sudo pkill wvdial'

#Copy to NAS at 192.168.1.99
alias nascp='tar cvz "$1" | ssh root@192.168.1.99 -C "tar cvz -C \"$2\""'

# privileged access
if [ $UID -ne 0 ]; then
    alias sudo='sudo '
    alias scat='sudo cat'
    alias svim='sudo vim'
    alias root='sudo su'
    alias reboot='sudo reboot'
    alias halt='sudo halt'
    alias update='sudo pacman -Su'
    alias netcfg='sudo netcfg2'
fi

# ls
eval $(dircolors -b)
alias ls='ls -hF --color=always'
alias lr='ls -R'                    # recursive ls
alias ll='ls -l'
alias la='ll -A'
alias lx='ll -BX'                   # sort by extension
alias lz='ll -rS'                   # sort by size
alias lt='ll -rt'                   # sort by date
alias lm='la | more'

# safety features
#alias cp='cp -i'
#alias mv='mv -i'
#alias rm='rm -I'                    # 'rm -i' prompts for every file
#alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'


# Less Colors for Man Pages

export LESS_TERMCAP_mb=$'\E[01;31m'	# begin blinking
export LESS_TERMCAP_md=$'\E[01;31m'	# begin bold
export LESS_TERMCAP_me=$'\E[0m'		# end mode
export LESS_TERMCAP_se=$'\E[0m'		# end standout-mode
export LESS_TERMCAP_so=$'\E[01;44;33m'	# begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'		# end underline
export LESS_TERMCAP_us=$'\E[01;32m'	# begin underline
export LESS="-R"
#export LESSCOLORIZER="pygmentize"

# Added by autojump install.sh
#bash /usr/etc/profile.d/autojump.bash

# Enable gcc color
#PATH="/usr/lib/colorgcc/bin:$PATH"

# Enable ccache
CCACHE_PATH="/usr/bin"

# Disable pango firefox
MOZ_DISABLE_PANGO=1

# Intel C++ Composer XE
#source /opt/intel/pkg_bin/compilervars.sh ia32
#source /opt/intel/pkg_bin/iccvars.sh intel64
#
#

# custom script
PATH=$PATH:/home/boss14420/.scripts/:/home/boss14420/.scripts/nautilusscripts/

# default editor
export EDITOR=vim

# python docs
export PYTHONDOCS=/usr/share/doc/python/html/

# colorgcc
export GCC_COLORS="error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01"

# Powerline
#source /usr/share/zsh/site-contrib/powerline.zsh

# Pkgfile
source /usr/share/doc/pkgfile/command-not-found.zsh
