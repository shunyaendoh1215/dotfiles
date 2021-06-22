# PATHs

# bash
export PATH=$HOME/bin:/usr/local/bin:$PATH

# neovim
export XDG_CONFIG_HOME="$HOME/.config"

# docker
export DOCKER_CONTENT_TRUST=1

# gh
export VISUAL='nvim'

# dotfiles
export DOTFILES_PATH="$HOME/dotfiles"

# nodebrew
# export PATH=$HOME/.nodebrew/current/bin:$PATH
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export PATH=/opt/local/bin:$PATH

# python
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

# PHP@7.2
export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"

# Composer
export PATH=~/.composer/vendor/bin:$PATH

# MySQL
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# Ruby
export PATH="~/.rbenv/shims:/usr/local/bin:$PATH"
eval "$(rbenv init -)"

# Flutter
# export PATH=$PATH:~/flutter/flutter/bin
export PATH="$PATH":"$HOME/.pub-cache/bin"
# export PATH="$PATH":"$HOME/fvm/default/bin"
# export PATH="$PATH":"$HOME/flutter/flutter/.pub-cache/bin"


# Android Studio
export ANDROID_HOME=~/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator

# go
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/code/golang
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export PATH=$PATH:$GOPATH/bin

# geth
export PATH="$HOME/geth:$PATH"

# java
# export PATH="$HOME/.jenv/bin:$PATH"
# eval "$(jenv init -)"
# export JAVA_HOME=$(/usr/libexec/java_home -v 11)
export JAVA_HOME=`/usr/libexec/java_home -v "1.8"`
PATH=${JAVA_HOME}/bin:${PATH}

# deno
export DENO_INSTALL="~/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH="/Users/esh2n/.deno/bin:$PATH"

# rust
export PATH="$HOME/.cargo/bin:$PATH"
export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"

# prettier
export PATH=$PATH:./node_modules/.bin

# elm-format
export PATH=$HOME:~/elm:$PATH

# asdf
. $(brew --prefix asdf)/asdf.sh