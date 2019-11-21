export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH=/usr/local/bin:/usr/local/sbin:~/Library/Python/3.7/bin/:$PATH

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

export PS1="\W:\u$ "
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Rails BIN
export PATH=./bin:./bin/stubs:$PATH
# RUST BIN
export PATH=~/.asdf/installs/rust/1.37.0/bin:$PATH

# ASDF
. /usr/local/opt/asdf/asdf.sh
. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash

# Z
. /usr/local/etc/profile.d/z.sh

# AWS Biscuit local
export AWS_SDK_LOAD_CONFIG=true
export AWS_PROFILE=secrets
