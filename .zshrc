# zmodload zsh/zprof && zprof
# iterm2
echo -e "\033]6;1;bg;red;brightness;53\a"
echo -e "\033]6;1;bg;green;brightness;58\a"
echo -e "\033]6;1;bg;blue;brightness;68\a"

typeset -U path PATH
path=(
	/opt/homebrew/bin(N-/)
	/usr/local/bin(N-/)
	$path
)

if (( $+commands[sw_vers] )) && (( $+commands[arch] )); then
	[[ -x /usr/local/bin/brew ]] && alias brew="arch -arch x86_64 /usr/local/bin/brew"
	alias x64='exec arch -x86_64 /bin/zsh'
	alias a64='exec arch -arm64e /bin/zsh'
	switch-arch() {
		if  [[ "$(uname -m)" == arm64 ]]; then
			arch=x86_64
		elif [[ "$(uname -m)" == x86_64 ]]; then
			arch=arm64e
		fi
		exec arch -arch $arch /bin/zsh
	}
fi

setopt magic_equal_subst

# divide zsh config file
export ZSHHOME="${HOME}/.zsh"
if [ -d $ZSHHOME -a -r $ZSHHOME -a -x $ZSHHOME ]; then
    for i in $ZSHHOME/*; do
        [[ ${i##*/} = *.zsh ]] &&
            [ \( -f $i -o -h $i \) -a -r $i ] && . $i
    done
fi

# if (which zprof > /dev/null) ;then
#     zprof | less
# fi

alias brew='arch -x86_64 /usr/local/bin/brew'
alias x64='exec arch -x86_64 "$SHELL"'
alias a64='exec arch -arm64e "$SHELL"'export PATH="/opt/homebrew/opt/ncurses/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/esh2n/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/esh2n/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/esh2n/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/esh2n/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/esh2n/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/esh2n/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/esh2n/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/esh2n/google-cloud-sdk/completion.zsh.inc'; fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
