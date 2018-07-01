""" 基本設定
set nocompatible " vi互換を解除する
set encoding=utf-8
set fileencodings=utf-8,sjis,euc-jp,iso-2022-jp
set fileformat=unix
set clipboard+=unnamed " クリップボードを使用する
set backspace=indent,eol,start " Backspaceで削除を可能にする
set visualbell t_vb= " ビープ音を無効にする
set virtualedit+=block " 文字がない箇所の選矩形選択を可能にする

""" 画面表示の設定
set number " 行番号を表示する
set cursorline " カーソル行を強調表示する
set laststatus=2 " ステータス行を常に表示する
set splitbelow " 横分割時に新しいウィンドウを下に開く
set splitright " 縦分割時に新しいウィンドウを右に開く
set list " 不可視文字を表示する
set listchars=tab:»\ ,trail:~ " 不可視文字の表示文字を設定する
highlight SpecialKey ctermfg=grey " 不可視文字の文字色を指定する
set showmatch " 対応する括弧を強調表示する
set matchtime=0 " 対応する括弧に移動しない
set t_Co=256 " 256色にする

""" タブとインデントの設定
set autoindent " 自動インデントを有効にする
set expandtab " タブを空白に置き換える ':set noet'で元に戻る
set tabstop=4 " タブ幅を設定する
set shiftwidth=4 " インデント幅を設定する

""" 検索と置換の設定
set hlsearch " 検索結果をハイライト表示する
set incsearch " インクリメンタルサーチを行う
set ignorecase " 大文字と小文字を区別しない ':set noic'で元に戻る

""" ファイル操作の設定
set noswapfile " スワップファイルを生成しない
set nobackup " バックアップファイルを生成しない
set autoread " 外部でファイルを変更された場合に読み直す
set confirm " 未保存ファイルがあるときは終了前に保存するか確認する
set hidden " 未保存ファイルがあるときでも別のファイルを開く

""" コマンドラインの設定
set wildmode=list,full " タブキーによるファイル名補完を有効にする

""" その他の設定
set tags=.tags " ctagsで使用するファイルを設定する

""" キーマッピング
nnoremap q: <Nop>
nnoremap sl <C-w>>
nnoremap sh <C-w><
nnoremap sk <C-w>+
nnoremap sj <C-w>-
nnoremap <silent> <Esc><Esc> :noh<CR>
nnoremap <silent> tt :tabnext<CR>
cnoremap <silent> tn tabnew<CR>:e .<CR>

""" プラグインの設定
filetype off
filetype plugin indent off
if filereadable(expand('~/.vimrc.plugin'))
    source ~/.vimrc.plugin
endif
filetype plugin indent on
syntax on

""" ファイル形式の設定
if filereadable(expand('~/.vimrc.filetype'))
    source ~/.vimrc.filetype
endif
