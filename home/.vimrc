" vim の独自拡張機能を使う(viとの互換性をとらない)
set nocompatible

" 文字コードを指定する
set encoding=UTF-8

" ファイルエンコードを指定する
set fileencodings=UTF-8

" 自動認識させる改行コードを指定する
set fileformats=unix,dos

" バックアップをとる
" 逆は [ set nobackup ]
set nobackup

" バックアップを作るディレクトリを指定する
"set backupdir=~/backup

" 検索履歴を50個残す
set history=50

" 検索時に大文字小文字を区別しない
set ignorecase

" 検索語に大文字を混ぜると検索時に大文字を区別する
set smartcase

" 新しい行のインデントを現在行と同じにする
set autoindent

" 新しい行を作った時に高度な自動インデントを行う
" カッコ毎にインデントする
set smartindent

" 検索語にマッチした単語をハイライトする
" 逆は [ set nohlsearch ]
set hlsearch

" インクリメンタルサーチを使う ( 検索語を入れている途中から随時マッチする文字列の検索を開始)
" 逆は [ set noincsearch ]
set incsearch

" 行番号を表示する
" 逆は [ set nonumber ]
set number

" 改行 ( $ ) やタブ ( ^I ) を可視化する
"set list

" タブ幅の設定
set tabstop=4

" 括弧入力時に対応する括弧を強調する
set showmatch

" 構文ごとに色分け表示する
" 逆は [ syntax off ]
syntax on

" [ syntax on ] の場合のコメント文の色を変更する
highlight Comment ctermfg=LightCyan

" ウィンドウ幅で行を折り返す
" 逆は [ set nowrap ]
set wrap

" タブ文字を空白文字に展開する
" 逆は [ set noexpandtab ]
set expandtab

" タブ文字を，画面上の見た目で何も自分に展開するか
set tabstop=4

" vimが挿入するインデントで挿入される幅を指定
set shiftwidth=4

" キーボードでTabキーを押したときに挿入される空白の量
set softtabstop=4

" vim で backspace が効かない不具合に対処
" http://wonderwall.hatenablog.com/entry/2016/03/23/232634
set backspace=indent,eol,start

" tmux 経由で起動した vim でクリップボードを共有する
" vim --version が +clipboard になっていないとダメ。また、CUI 版は fakeclip が必要
" http://vim.g.hatena.ne.jp/tokorom/20111211/1323619680
"set clipboard=unnamed,autoselect

" powerline の設定
let g:powerline_pycmd="python3"
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set ambiwidth=double " For Cica font
