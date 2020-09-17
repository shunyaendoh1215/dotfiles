# bash
export PATH=$HOME/bin:/usr/local/bin:$PATH

# neovim
export XDG_CONFIG_HOME="$HOME/.config"

# divide zsh config file
export ZSHHOME="${HOME}/.zsh"
if [ -d $ZSHHOME -a -r $ZSHHOME -a -x $ZSHHOME ]; then
    for i in $ZSHHOME/*; do
        [[ ${i##*/} = *.zsh ]] &&
            [ \( -f $i -o -h $i \) -a -r $i ] && . $i
    done
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


echo ' dBBBBBP .dBBBBP   dBP dBP dBBBBBb    dBBBP'
echo '         BP                    dBP'
echo '   dBP   `BBBBb  dBBBBBP   dBBBBK   dBP'
echo '  dBP       dBP dBP dBP   dBP  BB  dBP'
echo " dBBBBPdBBBBP' dBP dBP   dBP  dB' dBBBBP"

# if (which zprof > /dev/null) ;then
#   zprof | less
# fi