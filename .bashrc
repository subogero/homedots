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

# Linux specifc aliases
alias kr='diatheke -b HunKar -k'
alias kj='diatheke -b KJV -k'
alias al='diatheke -b Aleppo -k'

# Cygwin specific aliases
alias cha='start chat trailer 55555 & disown'
alias chs='start chat trailer 55556 & disown'
alias man='LANG=C.ISO-8859-1 man'

# Cygwin specific functions
winargv()
{
    cmd=$1;
    shift;
    argv=();
    for i in $@;
    do
        j=`cygpath -da -- $i 2>/dev/null` && i=$j;
        argv+=("$i");
    done;
    $cmd ${argv[@]}
}

mapi()
{
    winargv mapis $@
}

mp()
{
    winargv mplayer $@
}
