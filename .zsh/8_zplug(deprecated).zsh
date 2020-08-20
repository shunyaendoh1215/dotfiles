# source ~/.zplug/init.zsh

# if [[ ! -d ~/.zplug ]];then
#   git clone https://github.com/zplug/zplug ~/.zplug
# fi

# zplug "zsh-users/zsh-history-substring-search"
# zplug "Jxck/dotfiles", as:command, use:"bin/{histuniq,color}"
# zplug "mafredri/zsh-async"
# zplug "tcnksm/docker-alias", use:zshrc
# zplug "k4rthik/git-cal", as:command, frozen:1
# zplug "junegunn/fzf-bin", \
#     from:gh-r, \
#     as:command, \
#     rename-to:fzf, \
#     use:"*darwin*amd64*"
# zplug "plugins/git",   from:oh-my-zsh
# zplug "modules/prompt", from:prezto
# zplug "lib/clipboard", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"
# zplug "jhawthorn/fzy", \
#     as:command, \
#     rename-to:fzy, \
#     hook-build:"make && sudo make install"
# zplug "b4b4r07/enhancd", at:v1
# zplug "mollifier/anyframe", at:4c23cb60
# zplug "b4b4r07/79ee61f7c140c63d2786", \
#     from:gist, \
#     as:command, \
#     use:get_last_pane_path.sh
# zplug "b4b4r07/hello_bitbucket", \
#     from:bitbucket, \
#     as:command, \
#     use:"*.sh"
# zplug "b4b4r07/httpstat", \
#     as:command, \
#     use:'(*).sh', \
#     rename-to:'$1'
# zplug "stedolan/jq", \
#     from:gh-r, \
#     as:command, \
#     rename-to:jq
# zplug "b4b4r07/emoji-cli", \
#     on:"stedolan/jq"
# zplug "zsh-users/zsh-syntax-highlighting", defer:2
# zplug "~/.zsh", from:local
# zplug 'dracula/zsh', as:theme
# zplug "zsh-users/zsh-completions"
# zplug "peterhurford/git-aliases.zsh"
# zplug "zsh-users/zsh-autosuggestions"
# zplug "zsh-users/zsh-history-substring-search", defer:3
# zplug "junegunn/fzf-bin", as:command, from:gh-r, rename-to:fzf
# zplug "junegunn/fzf", as:command, use:bin/fzf-tmux
# zplug "mollifier/anyframe"
# zplug "b4b4r07/enhancd", use:init.sh

# zplug "zplug/zplug", hook-build:'zplug --self-manage'

# if ! zplug check --verbose; then
#     printf "Install? [y/N]: "
#     if read -q; then
#         echo; zplug install
#     fi
# fi

# zplug load

echo '8         _\///////////__\//////////__\///____\///__\///____________\////////_'