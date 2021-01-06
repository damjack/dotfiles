# for colors
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# grep colors
# export GREP_OPTIONS="--color=auto"

# alias command
#alias grep="ggrep"
#alias awk="/usr/local/Cellar/awk/20180827/bin/awk"
alias g="git"
alias gup="g fg; g pf"
alias e="vim ."
alias tarx="tar -cf - $1 | xz -9 -c - > $1.tar.xz"

# alias for listing
alias ll="ls -lah"
alias la="ls -a"
alias l="ls -lh"

# alias for disk tools
alias du="du -h"

# alias for copy move and remove
alias cp="cp -v"
alias mv="mv -v"
alias rm="rm -v"
alias rf="rm -rf"
alias mkdir='mkdir -pv'
alias less='less -FSRXc'

# reload bash stuff
alias reload=". ~/.bash_profile"

# reload dns
alias flush="sudo killall -HUP mDNSResponder"

# remove .ds_store
alias cleanup="find . -type f -name "*.DS_Store" -ls -delete"

# navigate
alias ~="cd ~"
alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../../"
alias .3="cd ../../../"

# copy the public key
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

# alias default
alias c="clear"
alias o="open"
alias oo="open ."
alias sudo="sudo "

# alias for ruby
alias bi="bundle install"

# alias for rails
alias rs="rails s"
alias rc="rails c"
alias rg="rails g"
alias rail_drop='rake db:drop; rake db:create; rake db:migrate'
alias rails_seed='rake db:seed'
alias rails_reset='empty_db; seed_db'

# alias for heroku
alias h="heroku"
alias hlog='heroku logs --tail'

# alias for elixir
alias xcomp="mix compile"
alias xiex="mix -S iex"
alias xdeps="mix deps.get"

# alias for brew
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'

# alias for docker
alias d="docker"
alias dc="docker-compose"
alias drp="docker-compose run --service-ports"

dcbuild() {
  docker-compose -p "$1" build;
}

dcgo() {
  docker-compose -p "$1" run --service-ports web bash;
}

dcstop() {
  docker-compose -p "$1" down;
}
