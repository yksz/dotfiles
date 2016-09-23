### 基本設定
export LANG=ja_JP.UTF-8 # 文字コードを設定する
setopt no_beep # ビープ音を無効にする
exec 2>>( while read X; do print "\e[91m${X}\e[0m" > /dev/tty; done & ) # 標準エラー出力の色を変更する
#bindkey -v # vi のキーバインドを使用する

### プロンプトの設定
PROMPT='%F{green}%n@%m%f %F{yellow}%(5~,%-2~/.../%2~,%~)%f'$'\n''%# '
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '[%b]'
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
RPROMPT="%1(v|%F{magenta}%1v%f|)"

### 補完の設定
autoload -U compinit; compinit # 補完機能を有効にする
autoload -U colors; colors # カラーを有効にする
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # 大文字と小文字を区別せずに補完する
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} # 補完候補に色を付ける

### 履歴の設定
HISTFILE=~/.zsh_history # 履歴をファイルに保存する
HISTSIZE=10000 # メモリに保存される履歴の件数を設定する
SAVEHIST=10000 # ファイルに保存される履歴の件数を設定する
setopt hist_ignore_all_dups # 重複するコマンドがあれば古い履歴を削除する
setopt hist_ignore_space # 行頭が空白のコマンドは記録しない
setopt inc_append_history # 履歴をインクリメンタルサーチに追加する
setopt share_history # 履歴を共有する
setopt auto_pushd # ディレクトリの移動履歴をを記録する．"cd -[Tab]" で移動履歴を一覧表示する

### 外部ファイルの読み込み
[ -f ~/.profile ] && source ~/.profile
[ -f ~/.bash_aliases ] && source ~/.bash_aliases
