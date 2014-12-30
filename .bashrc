HISTCONTROL=erasedups

export LC_COLLATE=C
export EDITOR=vi

# General aliases
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias la='ls -lA'
alias me='mcedit'
alias og='szg -e'
alias gdb='gdb -q'
alias make='make --no-print-directory'
alias mp='mplayer -subcp latin2'
alias vi='vim -O'

# Linux specifc aliases
alias kr='diatheke -b HunKar -k'
alias kj='diatheke -b KJV -k'
alias al='diatheke -b Aleppo -k'

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]@\[\033[01;34m\]\h\[\033[00m\]:\[\033[01;33m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac
# Sync dotfiles with GitHub
LASTSYNC=`cat .lastsync 2>/dev/null`
[ -z "$LASTSYNC" ] && LASTSYNC=0
DT=$((`date +%s` - LASTSYNC))
if [ $DT -gt 36000 ]; then
    echo Dotfiles not synced since $DT [s]
    if git diff --quiet HEAD && [ `git rev-parse --abbrev-ref HEAD` = master ]; then
        if git pull origin master; then
            date +%s > .lastsync
        else
            git reset --hard
        fi
    else
        echo Local dotfile status:
        git status
    fi
fi
