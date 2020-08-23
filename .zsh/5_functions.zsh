# change git user config
# TODO 撤廃する
function git.tomain() {
  git config --global user.name "shunyaendoh"
  git config --global user.email "shunya.endoh@gmail.com"
}

function git.tosub() {
  git config --global user.name "shunyaendoh1215"
  git config --global user.email "shunyaendoh.1215@gmail.com"
}

function zle-line-init zle-keymap-select {
  RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
  RPS2=${RPS1}
  zle reset-prompt
}
function peco_select_history() {
  local tac
  if which tac > /dev/null; then
    tac="tac"
  else
    tac="tail -r"
  fi
  BUFFER=$(fc -l -n 1 | eval $tac | peco --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle clear-screen
}
function peco_select_src () {
  local selected_dir=$(ghq list -p | peco --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}

function peco_change_directory() {
  cd $(fasd -d | peco | awk '{print $2}')
}

#TODO リファクタする
#git ls-tree -r --name-only --full-tree HEADをつかう
#fzfのpreview機能使う
#"ls | fzf -0 -1 --ansi --reverse --height 1%
#"https://github.com/relastle/pmy
function peco_select_file_below_pwd() {
  if [ ! `pwd | grep "$(ghq root)"` ]; then
    echo "you are not in ghq path"
    zle accept-line
    return 0
  fi
  # grep -v -e で除外対象を指定
  local selected_path="\
    $(find . | \
    sed "s/^.//g" | \
    grep -v -e node_modules -e vendor -e /.git | \
    fzf --ansi --reverse --height 30% --border)"
  if [ -n "$selected_path" ]; then
    local dest_path=".$(echo $selected_path | awk '{print $1}')"
    go_to $dest_path
  fi
}
# ghqプロジェクト内で飛ぶ
function peco_select_file_within_project() {
  local base_path=$(pwd | grep -o "$(ghq list -p)")
  if [ -z $base_path ]; then
    echo "you are not in ghq project"
    zle accept-line
    return 0
  fi
  local trim_base_path="^$(echo $base_path | sed "s/\//./g")."
  local paths="\
    $(find $base_path | \
    sed "s/$trim_base_path//g" | \
    grep -v -e node_modules -e vendor -e .git)"
  local selected_path="$(echo "(root)\n$paths" | awk '{print $1}' | fzf --ansi --reverse --height 30% --border)"
  if [ -n "$selected_path" ]; then
    if [[ "$selected_path" = "(root)" ]]; then
      go_to $base_path
      return 0
    fi
    local dest_path="$base_path/$(echo $selected_path | awk '{print $1}')"
    go_to $dest_path
  fi
}
function go_to() {
  if [ -f $1 ]; then
    nvim $1
    dir_path=$(echo $1 | rev | cut -d '/' -f 2- | rev)
    BUFFER="cd $dir_path"
  elif [ -d $1 ]; then
    BUFFER="cd $1"
  else
    echo "selected path is neither file nor directory"
  fi
  zle accept-line
}
#TODO リファクタする
function peco_edit_file() {
  local selected_path="$(fasd -f | peco | awk '{print $2}')"
  if [ -n "$selected_path" ]; then
    nvim $selected_path
  fi
}
#TODO 関数名からpecoをはずす
function peco_select_branch_except_current() {
  git branch -a --sort=-authordate | \
    grep -v -e '->' -e '*' | \
    sed "s/remotes\/origin\///g" | \
    #重複行を削除 https://qiita.com/arcizan/items/9cf19cd982fa65f87546
    awk '!a[$0]++' | \
    fzf --ansi --reverse --height 20% --border
}
function peco_select_local_branch_except_current() {
  git branch | \
    grep -v -e '->' -e '*' | \
    sed "s/remotes\/origin\///g" | \
    #重複行を削除 https://qiita.com/arcizan/items/9cf19cd982fa65f87546
    awk '!a[$0]++' | \
    fzf --ansi --reverse --height 20% --border
}
function peco_select_branch_all() {
  git branch -a --sort=-authordate | \
    grep -v -e '->' | \
    sed "s/remotes\/origin\///g" | \
    sed "s/\*/ /g" | \
    #重複行を削除 https://qiita.com/arcizan/items/9cf19cd982fa65f87546
    awk '!a[$0]++' | \
    fzf --ansi --reverse --height 20% --border
}

function precmd() {
  if [ ! -z $TMUX ]; then
    tmux refresh-client -S
  fi
}

echo '5      ______/\\\/____\/\\\\\\\\\\_\/\\\/////\\\_\/\\\___\///_/\\\_________'