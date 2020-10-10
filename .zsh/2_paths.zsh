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
export PATH=$HOME/.nodebrew/current/bin:$PATH

# python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

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
export PATH=$PATH:~/flutter/flutter/bin

# Android Studio
export ANDROID_HOME=/Users/shunya/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator

# go
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/code/golang
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export PATH=$PATH:$GOPATH/bin

# geth
export PATH="$HOME/geth:$PATH"