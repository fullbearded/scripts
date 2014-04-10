# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="kolo"


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

alias la='ls -lha'
alias l='ls -lh'
alias ll='ls -lh'

# Customize to your needs...
# ssh command
alias ssh_58share_server="ssh -p 58100 root@118.123.20.183"
alias ssh_vps='ssh root@198.52.100.39'

alias ssh_kehu_hujianwen='ssh -p 2222 root@118.244.201.175'

# tuan800 ssh
alias ssh_47='ssh root@192.168.100.47'
alias ssh_tao800_tester='ssh webuser@192.168.100.45'
alias ssh_sulin='ssh sulin@192.168.100.116'
alias ssh_company_crawler='ssh huhongda@192.168.100.172'

# scp 工具
alias scp_58share_server="scp -P 58100 root@118.123.20.183:/tmp/deals.tar.gz /tmp/; cd /tmp/;tar -zxf deals.tar.gz; mysql -u root -p123456 w58share < deals.sql"

# cd important dir
alias c1='cd /Users/huhongda/code/private/w58share'
alias c2='rvm use ruby-2.0.0-p247 --default; cd /Users/huhongda/code/private/w58share'
alias ca='cd /Users/huhongda/code/private/w519y9'
alias ctao800='rvm use ruby-1.9.3-p194 --default; cd /Users/huhongda/code/tuan800/tao800_fire'
alias cpassport='cd /Users/huhongda/code/private/passport'
alias cgems='cd ~/.rvm/gems/ruby-1.9.3-p194/gems'

alias cuzhan='cd /Users/huhongda/code/u_zhan_develop/trunk/TAE_SDK/apps'

# git command 
alias gits='git status'
alias gitpull='git pull origin develop'
alias gitdev='git checkout develop'
alias gitpush='git push origin develop'
alias gitb='git branch'
alias gitba='git branch -a'
alias git_c='git checkout' $*
alias git_a='git add .'
alias git_m='git commit -m' $*


# restart memcached
alias mems='ps axf | grep memcache | grep -v grep | awk '\''{print $1}'\'' | xargs kill -9 ; memcached -d -p 11211 -u memcached -m 64 -c 1024 -P /var/run/memcached/memcached.pid &'

# common command
alias e='exit'

# mysql end
alias m='mysql -u root -p123456'
alias m8='mysql -h 192.168.100.15 -P 3306 -u tuan_sql -pbabaisql9F13 --default-character-set=utf8 tuan800'
alias k9='kill -9 '

export LC_ALL=zh_CN.utf-8
export LANG=zh_CN.utf-8
export BUNDLER_EDITOR=vim

set -g default-terminal "screen-256color"

export PATH="$(brew --prefix php54)/bin:$PATH"
export PATH="$(brew --prefix php54)/sbin:$PATH"
# tomcat PATH
# export PATH=$PATH:/usr/local/apache-tomcat-7.0.42/bin

# rvm
alias rvm93='rvm use ruby-1.9.3-p194 --default'
alias rvm20='rvm use ruby-2.0.0-p247 --default'
alias solr_start='/bin/bash /usr/local/ruby-solr-master/bin/startup.sh'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
