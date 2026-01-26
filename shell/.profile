# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022


export PATH=/opt/cmake/bin:$PATH
export PATH=$PATH:"/usr/local/go/bin"
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
export PATH="$PATH:$HOME/.rubies/ruby-3.2.9/bin"
export PATH="$PATH:/home/shayan/.cargo/bin"

export XDG_CONFIG_HOME="$HOME/.config/"
export XDG_PICTURES_DIR="$HOME/media/Pictures/"

setxkbmap -option caps:swapescape


# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi


export PATH="$PATH:/opt/intellij/bin"
