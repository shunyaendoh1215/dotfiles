#!/bin/sh

set -eu # error handle
cd ~/dotfiles
THIS_DIR=$(cd $(dirname $0); pwd)

cd $THIS_DIR
git submodule init
git submodule update

echo "start setup..."
for f in .??*; do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitconfig.local.template" ] && continue
    [ "$f" = ".require_oh-my-zsh" ] && continue
    [ "$f" = ".gitmodules" ] && continue

    # make sinbolic link
    ln -snfv ~/dotfiles/"$f" ~/"$f"
done

# [ -e ~/.gitconfig.local ] || cp ~/dotfiles/.gitconfig.local.template ~/.gitconfig.local

cat << END

**************************************************
DOTFILES SETUP FINISHED! bye.
**************************************************

END
