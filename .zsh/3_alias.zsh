# relogin shell
alias relogin='exec $SHELL -l && source ~/.zshrc'
alias emu='emulator -avd Pixel_API_29 -no-boot-anim'
alias 8p='6ECAF268-13EF-41C7-869C-00AD8CE6FEDC'
alias 11m='689804FE-285F-48C4-BC48-252732464962'
alias pad='6ADCDBA2-A3BF-4B1D-AC14-CB21D242B639'
alias padold='BE621A31-B58B-4F1D-A33A-AD699A679722'
alias simu8p='open -a simulator --args -CurrentDeviceUDID 6ECAF268-13EF-41C7-869C-00AD8CE6FEDC'
alias simu11m='open -a Simulator --args -CurrentDeviceUDID 689804FE-285F-48C4-BC48-252732464962'
alias simupad='open -a Simulator --args -CurrentDeviceUDID 6ADCDBA2-A3BF-4B1D-AC14-CB21D242B639'
alias simupadold='open -a Simulator --args -CurrentDeviceUDID BE621A31-B58B-4F1D-A33A-AD699A679722'
# open markright app
alias markright="open -a /Applications/MarkRight.app"
alias bri='brew install'
alias brui='brew uninstall'
alias ctags="`brew --prefix`/bin/ctags"

alias vim='nvim'
alias vi='vim'
alias vz='vim ~/.zshrc'
alias vn='vim ~/.config/nvim/init.vim'
alias sz='source ~/.zshrc'
alias la='exa -a'
alias ls='exa'
alias git='hub'
alias rm='trash'
alias g='git'
alias gi='git init'
alias ga='git add --all'
alias gc='git commit'
alias gcl='git clone'
alias gb='git branch'
alias gg='git grep'
alias gl='git log --graph --decorate --oneline'
alias gch='peco_select_branch_except_current | xargs -t git checkout'
alias gchb='git checkout -b'
alias gsw='git switch'
alias gbd='peco_select_local_branch_except_current | xargs -t git branch -D'
alias gpo='peco_select_branch_all | xargs -t git push origin'
alias gs='git status'
alias gr='git rebase'
alias gr2='git rebase -i HEAD~2'
alias gr5='git rebase -i HEAD~5'
alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias v='f -e nvim'

alias v='peco_edit_file'
alias c='peco_change_directory'
alias b='peco_select_file_below_pwd'
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection
alias memo='vim $(ghq root)/github.com/shunyaendoh1215/playground/notes/$(date "+%Y_%m_%d").md'

alias simuvid='xcrun simctl io booted recordVideo $(date "+%Y_%m_%d").mov'

alias ghl='cd $(ghq root)/$(ghq list | peco)'
alias ghr='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'

echo '3    __/\\\\\\\\\\\__/\\\\\\\\\\_\/\\\__________/\\/\\\\\\\____/\\\\\\\\_'
