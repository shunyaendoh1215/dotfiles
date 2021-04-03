# [ key bind ]
# コマンドラインでvimライクに編集できるようにする
bindkey -v
bindkey -M vicmd 'gg' beginning-of-line
bindkey -M vicmd 'G'  end-of-line

# peco
bindkey "^h" peco_select_history # ctrl-hでpeco-history
bindkey "^]" peco_select_src
bindkey "^v" peco_select_file_within_project
bindkey "^b" peco_select_file_below_pwd
bindkey "^e" peco_change_directory


# コマンド履歴検索
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

bindkey '^[[1;3C' forward-word
bindkey '^[[1;3D' backward-word

# [ register widget ]
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
zle -N zle-line-init
# zle -N zle-line-finish
zle -N zle-keymap-select
zle -N peco_select_history
zle -N peco_select_src
zle -N peco_select_file_below_pwd
zle -N peco_select_file_within_project
zle -N peco_select_branch_except_current
zle -N peco_select_local_branch_except_current
zle -N peco_select_branch_all
zle -N peco_change_directory

setopt auto_list
setopt auto_menu
zstyle ':completion:*:default' menu select=1
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}


TIMEFMT=$'\n\n========================\nProgram : %J\nCPU     : %P\nuser    : %*Us\nsystem  : %*Ss\ntotal   : %*Es\n========================\n'