### 基本設定
setopt no_beep # ビープ音を無効にする
zstyle ':completion:*' use-cache true
exec 2>>( while read x; do print "\e[91m${x}\e[0m" > /dev/tty; done & ) # 標準エラー出力の色を変更する
[ -x /usr/bin/dircolors ] && eval "$(dircolors -b)" # export LS_COLORS
#bindkey -v # vi のキーバインドを使用する

### 履歴の設定
HISTFILE=~/.zsh_history # 履歴をファイルに保存する
HISTSIZE=10000 # メモリに保存される履歴の件数を設定する
SAVEHIST=100000 # ファイルに保存される履歴の件数を設定する
setopt auto_pushd # ディレクトリの移動履歴をを記録する．"cd -[Tab]" で移動履歴を一覧表示する
setopt hist_ignore_all_dups # 重複するコマンドがあれば古い履歴を削除する
setopt hist_ignore_space # 行頭が空白のコマンドは記録しない
setopt inc_append_history # 履歴をインクリメンタルサーチに追加する
setopt share_history # 履歴を共有する
bindkey '^N' history-beginning-search-forward
bindkey '^P' history-beginning-search-backward

### 補完の設定
autoload -U compinit; compinit # 補完機能を有効にする
setopt auto_menu # 補完キー押下で補完候補を自動的に切り替える
setopt auto_param_slash # ディレクトリ名の補完で末尾の/ を自動的に付加する
setopt list_types # 補完候補一覧でファイルの種別を表示する
zstyle ':completion:*' completer _complete _expand _match _approximate
zstyle ':completion:*' group-name '' # 補完候補をグループ毎に表示する
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} # 補完候補に色を付ける
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # 大文字と小文字を区別せずに補完する
zstyle ':completion:*:default' menu select=2
zstyle ':completion:*:descriptions' format '%F{green}%B[%d]%b%f'

### プロンプトの設定
autoload -Uz vcs_info
autoload -U colors; colors # カラーを有効にする
setopt prompt_subst
zstyle ':vcs_info:git*' check-for-changes true
zstyle ':vcs_info:git*' unstagedstr '*'
zstyle ':vcs_info:git*' stagedstr '+'
zstyle ':vcs_info:*' formats '(%b)%u%c'
zstyle ':vcs_info:*' actionformats '(%b|%a)'
precmd () {
    psvar=()
    vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
PROMPT='%F{green}%n@%m%f %F{yellow}%(5~,%-2~/.../%2~,%~)%f'$' %1(v|%F{cyan}%1v%f|)\n''%# '
