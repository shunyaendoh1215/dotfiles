# Relogin Shell {{{
  alias relogin='exec $SHELL -l && source ~/.zshrc'
  alias sz='source ~/.zshrc'
  alias tc='tmux source ~/.tmux.conf'
# }}}

# Open Visual Device {{{
  alias emu='emulator -avd Pixel_API_29 -no-boot-anim'
  alias 8p='6ECAF268-13EF-41C7-869C-00AD8CE6FEDC'
  alias 11m='689804FE-285F-48C4-BC48-252732464962'
  alias pad='6ADCDBA2-A3BF-4B1D-AC14-CB21D242B639'
  alias padold='BE621A31-B58B-4F1D-A33A-AD699A679722'
  alias simu8p='open -a simulator --args -CurrentDeviceUDID 6ECAF268-13EF-41C7-869C-00AD8CE6FEDC'
  alias simu11m='open -a Simulator --args -CurrentDeviceUDID 689804FE-285F-48C4-BC48-252732464962'
  alias simupad='open -a Simulator --args -CurrentDeviceUDID 6ADCDBA2-A3BF-4B1D-AC14-CB21D242B639'
  alias simupadold='open -a Simulator --args -CurrentDeviceUDID BE621A31-B58B-4F1D-A33A-AD699A679722'
  alias simuvid='cd ~/Desktop || xcrun simctl io booted recordVideo $(date "+%Y_%m_%d").mov'
# }}}

# Open Markright App {{{
  alias markright="open -a /Applications/MarkRight.app"
# }}}

# Google Chrome {{{
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias chrome-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"
alias chromium="/Applications/Chromium.app/Contents/MacOS/Chromium"
alias chrhe="chrome --headless --disable-gpu --screenshot --disk-cache-dir=/tmp --user-data-dir=/tmp --crash-dumps-dir=/tmp https://www.google.com"
# }}}

# HomeBrew {{{
  alias bri='brew install'
  alias brui='brew uninstall'
  alias ctags="`brew --prefix`/bin/ctags"
# }}}

# Vim {{{
  alias vim='nvim'
  alias vi='vim'
  alias vz='vim ~/.zshrc'
  alias vn='vim ~/.config/nvim/init.vim'
# }}}

# Extend Terminal CLI {{{
  alias la='exa -a'
  alias ls='exa'
  alias rm='trash'
  alias Rm='rm -rf'
# }}}

# Git Alias {{{
# Precise
  alias git='hub'
  alias g='git'

# General
  alias gi='git init'
  alias gcl='git clone'
  alias ga='git add'
  alias gA='git add --all'
  alias gc='git commit'
  alias gpul='git pull'
  alias gpus='git push'

# Branch
  alias gb='git branch'
  alias gsw='git switch'
  alias gchb='git checkout -b'
  # Change Branch W/ Peco
  alias gch='peco_select_branch_except_current | xargs -t git checkout'
  # Delete Branch W/ Peco
  alias gbd='peco_select_local_branch_except_current | xargs -t git branch -D'
  # Push Branch W/ Peco
  alias gpuso='peco_select_branch_all | xargs -t git push origin'
  # Pull Branch W/ Peco
  alias gpulo='peco_select_branch_all | xargs -t git pull origin'
  # Merge Branch W/ Peco
  alias gme='peco_select_branch_except_current  | xargs -t git merge --no-ff --edit'
  alias gmesq='peco_select_branch_except_current  | xargs -t git merge --squash'
  alias gmeabo='git merge --abort'
  alias gpr='peco_select_branch_except_current | xargs -t gh pr create -w -B'

# Showing Data
  alias gg='git grep'
  alias gl='git log --graph --decorate --oneline'
  alias gt="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(red)%h%C(r) —— %C(bold blue)%an%C(r): %C(white)%s%C(r) %C(dim white) %C(bold green)(%ar)%C(r) %C(bold yellow)%d%C(r)' --all"
  alias gs='git status'

# Remote
  alias grao='git remote add origin'
  alias gra='git remote add'
  alias grro='git remote remove origin'
  alias grr='git remote remove'

# Rebase
  alias gr='git rebase'
  # edit commit history
  alias gr1='git rebase -i HEAD~1'
  alias gr2='git rebase -i HEAD~2'
  alias gr3='git rebase -i HEAD~3'
  alias gr4='git rebase -i HEAD~4'
  alias gr5='git rebase -i HEAD~5'

# Restore
  alias gre='git restore'

# Stash
  alias gst='git stash'

# On Error
  alias grmi='rm -rf .git/index.lock .git/COMMIT_EDITMSG'
# /Git Alias }}}

# Peco & Ghq{{{
  alias vv='peco_edit_file'
  alias c='peco_change_directory'
  alias b='peco_select_file_below_pwd'
  alias ghl='cd $(ghq root)/$(ghq list | peco)'
  alias browse='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'
  alias memo='vim $(ghq root)/github.com/shunyaendoh1215/playground/notes/$(date "+%Y_%m_%d").md'
# }}}

# Fasd {{{
  alias a='fasd -a'        # any
  alias s='fasd -si'       # show / search / select
  alias v='f -e nvim'
  alias f='fasd -f'        # file
  alias sd='fasd -sid'     # interactive directory selection
  alias sf='fasd -sif'     # interactive file selection
  alias z='fasd_cd -d'     # cd, same functionality as j in autojump
  alias zz='fasd_cd -d -i' # cd with interactive selection
# }}}

# Docker {{{
  alias d-c='docker-compose'
# }}}
