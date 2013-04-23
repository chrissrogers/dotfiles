# Prompt
export CLICOLOR=1 # colorz
export PS1="\[\e[G\]\[\e[30m\]――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――\[\e[0m\]\n\w \[\e[30m\]› \$(/bin/ls -1 | /usr/bin/wc -l | /usr/bin/sed 's: ::g') files, \$(/bin/ls -lah | /usr/bin/grep -m 1 total | /usr/bin/sed 's/total //')b\[\e[0m\] `if [ $(jobs -r | wc -l) -gt 0 ]; then echo "\[\e[33m\]$(jobs -r | wc -l) jobs\[\e[0m\]"; fi` \n\[\e[30m\]\!\[\e[0m\] \[\e[3$((RANDOM%6+1))m\]⚡\[\e[30m\] ❯\[\e[0m\] " # prompt

# rbenv
export PATH=~/.rbenv/bin:$PATH
eval "$(rbenv init -)"

# postgres
export PATH=/Applications/Postgres.app/Contents/MacOS/bin:$PATH

# Haskell / cabal
export PATH=~/Library/Haskell/bin:~/.cabal/bin:$PATH

# github
export GITHUB_USER=chrissrogers

# Google depot_tools
export PATH=~/Development/Tools/depot_tools:$PATH

# virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh

# fun
alias idunnolol="echo -n '¯\(°_o)/¯' | pbcopy"
alias disapproval="echo -n 'ಠ_ಠ' | pbcopy"
alias fliptable="echo -n '(╯°□°）╯︵ ┻━┻' | pbcopy"
alias jameron='curl http://proverbinatus.com/quotes/random | say'

# web bouncer
alias freedia='sudo apachectl restart && sudo killall memcached'

# bundle exec
alias be='bundle exec'

# ll
alias ll='ls -la'

# Google closure compiler
alias googlecc='java -jar ~/Development/Tools/closure-compiler/compiler.jar'

# mysql
alias mysql_start='sudo /Library/StartupItems/MySQLCOM/MySQLCOM start'
alias mysql_stop='sudo /Library/StartupItems/MySQLCOM/MySQLCOM stop'

# trace.js
alias tracejs='node ~/trace.js '

# X11 -> XQuartz
export CPPFLAGS=-I/opt/X11/include

# GCC 4.2
export CC=/usr/local/bin/gcc-4.2

# Plan9
PLAN9=/usr/local/plan9 export PLAN9
PATH=$PATH:$PLAN9/bin export PATH

# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

test -r /sw/bin/init.sh && . /sw/bin/init.sh

# Homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# keys
while read line; do
  eval $line
done < ~/.dotfiles/.keys

launchctl setenv PATH $PATH
launchctl setenv GITHUB_USER $GITHUB_USER
launchctl setenv GITHUB_TOKEN $GITHUB_TOKEN

# nvm
[[ -s /Users/chrisrogers/.nvm/nvm.sh ]] && . /Users/chrisrogers/.nvm/nvm.sh
