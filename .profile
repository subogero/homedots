# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
# SSH Agent
[ "$SSH_AUTH_SOCK" ] || export SSH_AUTH_SOCK=~/.ssh/.ssh-socket
echo --- LIST ADDED KEYS ---
ssh-add -l
if [ $? = 2 ]; then
  echo --- ADD KEYS ---
  rm -f ~/.ssh/.ssh-{socket,agent-pid,script}
  ssh-agent -a $SSH_AUTH_SOCK 2>/dev/null >~/.ssh/.ssh-script
  . ~/.ssh/.ssh-script >/dev/null
  echo $SSH_AGENT_PID >~/.ssh/.ssh-agent-pid
  ssh-add .ssh*/id_rsa
fi
