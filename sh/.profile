# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022


# Configure PATH

if [ -d "$HOME/bin" ]
then
    export PATH="$PATH:$HOME/bin"
fi
if [ -d "$HOME/.local/bin" ]
then
    export PATH="$PATH:$HOME/.local/bin"
fi

# Set Environment Variables
#export JAVA_HOME="/usr/java/jdk-21-oracle-x64/"

if [ $(eval which nvim) ]
then
    export EDITOR=nvim
elif [ $(eval which vim) ]
then
    export EDITOR=vim
elif [ $(eval which vi) ]
then
    export EDITOR=vi
fi


# if running bash
if [ -n "$BASH_VERSION" -a $DOT_BASHRC ]
then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]
    then
        source "$HOME/.bashrc"
    fi
fi
