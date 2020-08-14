### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
autoload -Uz add-zsh-hook
autoload -Uz cdr
autoload -Uz chpwd_recent_dirs

(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk


# OS間のクリップボードの差異を吸収するコマンドを定義する oh-my-zsh のスニペットをロードします。
zplugin snippet 'OMZ::lib/clipboard.zsh'

# zsh の補完を使いやすく設定する oh-my-zsh のスニペットをロードします。
zplugin snippet 'OMZ::lib/completion.zsh'
zplugin snippet 'OMZ::lib/compfix.zsh'

export ZSH_PLUGINS_ALIAS_TIPS_TEXT='alias-tips: '

# fzf で絵文字を検索&入力ためのプラグインです。
zplugin light 'b4b4r07/emoji-cli'
# 利用可能なエイリアスを使わずにコマンドを実行した際に通知するプラグインです。
zplugin light 'djui/alias-tips'
# fzf を使ったウィジェットが複数バンドルされたプラグインです。
zplugin light 'mollifier/anyframe'
# 作業中のGitのルートディレクトリまでジャンプするコマンドを定義するプラグインです。
# cd-gitroot コマンドをエイリアスで U に割り当てています。
zplugin light 'mollifier/cd-gitroot'
# tmux のウィンドウを作業中のGitレポジトリ名に応じて自動的にリネームしてくれるプラグインです。(自分で作った)
zplugin light 'sei40kr/zsh-tmux-rename'
# ls よりも使いやすく見やすいディレクトリの一覧表示のコマンドを定義するプラグインです。
zplugin ice pick'k.sh'
zplugin light 'supercrabtree/k'

# 作業ディレクトリに .env ファイルがあった場合に自動的にロードしてくれます。
zplugin snippet 'OMZ::plugins/dotenv/dotenv.plugin.zsh'
# コマンド入力待ち状態から control-Z で suspend したプロセスに復帰するキーバインドを設定するプラグインです。
zplugin snippet 'OMZ::plugins/fancy-ctrl-z/fancy-ctrl-z.plugin.zsh'
# Gitの補完と大量のエイリアスを定義するプラグインです。
# エイリアスは重宝するものが多く、Gitを使うユーザーには必ずオススメしたいプラグインです。
zplugin snippet 'OMZ::plugins/git/git.plugin.zsh'
# GitHub のレポジトリを管理するためのコマンドを定義するプラグインです。
zplugin snippet 'OMZ::plugins/github/github.plugin.zsh'
# 非GNU系OSにインストールしたGNU系ツールをプリフィックスなしで使えるようにするプラグインです。
zplugin snippet 'OMZ::plugins/gnu-utils/gnu-utils.plugin.zsh'
# .zshrc を zcompile してロードしてくれる src コマンドを定義するプラグインです。
zplugin snippet 'OMZ::plugins/zsh_reload/zsh_reload.plugin.zsh'
# }}}


# zplugin: Commands {{{
# Go で書かれたツール群を並列ダウンロード&ビルド&インストールしてくれます。
zplugin ice from'gh-r' as'command' mv'gotcha_* -> gotcha'
zplugin light 'b4b4r07/gotcha'

# zplugin: Completions {{{
# プラグインの中に含まれているコマンド補完のみを zplugin で管理します。
# 想定された zplugin の使い方ではないかもしれません。
zplugin ice pick''
zplugin light 'jsforce/jsforce-zsh-completions'
zplugin ice pick''
zplugin light 'zsh-users/zsh-completions'
# }}}

# zplugin: Plugins loaded after compinit {{{
# コマンドをハイライトするプラグインを遅延ロードします。
zplugin ice wait'1' atload'_zsh_highlight'
zplugin light 'zdharma/fast-syntax-highlighting'
# コマンドをサジェストするプラグインを遅延ロードします。
zplugin ice wait'1' atload'_zsh_autosuggest_start'
zplugin light 'zsh-users/zsh-autosuggestions'

# プロンプトのテーマを遅延ロードします。このプラグインのみロード完了後にプロンプトを再描画しています。
zplugin ice pick'spaceship.zsh' wait'!0'
zplugin light 'denysdovhan/spaceship-zsh-theme'
# }}}

compinit
zplugin cdreplay -q

echo 'initialized ~/.zinit.zsh!'
