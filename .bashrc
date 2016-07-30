HISTCONTROL=erasedups

export LC_COLLATE=C
export LANGUAGE=$LANG

export EDITOR=vi

PATH=$PATH:~/bin

# General aliases
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias la='ls -lAh'
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
    PS1='\[\033[01;34m\]\h\[\033[01;33m\]\w\[\033[00;34m\]\A\[\033[00m\]\$ '
else
    PS1='\u@\h:\w\$ '
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
