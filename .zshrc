# bash
export PATH=$HOME/bin:/usr/local/bin:$PATH

# divide zsh config file
export ZSHHOME="${HOME}/.zsh"
if [ -d $ZSHHOME -a -r $ZSHHOME -a -x $ZSHHOME ]; then
    for i in $ZSHHOME/*; do
        [[ ${i##*/} = *.zsh ]] &&
            [ \( -f $i -o -h $i \) -a -r $i ] && . $i
    done
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

echo '============================================================================='

# if (which zprof > /dev/null) ;then
#   zprof | less
# fi