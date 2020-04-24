"--------------------------------------------------------------
"          shell                                            <<<
"--------------------------------------------------------------
" set shell=/bin/bash

"--------------------------------------------------------------
"          encoding & color                                 <<<
"--------------------------------------------------------------
set encoding=utf8
scriptencoding utf8
set fileencoding=utf-8
set termencoding=utf8
set fileencodings=utf-8,ucs-boms,euc-jp,ep932
set fileformats=unix,dos,mac
set ambiwidth=double
set nobomb
set t_Co=256

"--------------------------------------------------------------
"          Vim Options                                      <<<
"--------------------------------------------------------------
set noswapfile " スワップファイルの作成先を変更
set clipboard+=unnamed " ヤンクをクリップボードへ繋ぐ
set belloff=all " ビープ音を消す
set number " 行番号
set title " タイトル
set backspace=indent,eol,start " 挿入モードでバックスペースで削除できるようにする
set hlsearch " 検索した時にハイライト
set incsearch " インクリメンタルサーチ. １文字入力毎に検索を行う
set ignorecase " 検索するときに大文字小文字を区別しない
set smartcase " 検索パターンに大文字を含んでいたら大文字小文字を区別する
set helplang=ja,en " ヘルプを日本語化"
set wrap " ウィンドウの幅より長い行は折り返され、次の行に続けて表示される。
set wildmenu " ファイル名補完
" set paste と set nopaste をF5 でトグルする
" set pastetoggle=<f5>

"--------------------------------------------------------------
"          indent                                           <<<
"--------------------------------------------------------------
filetype plugin indent on
set expandtab
set tabstop=2
set softtabstop=2
set autoindent
set smartindent
set shiftwidth=2
au FileType go setlocal sw=4 ts=4 sts=4 noet

"--------------------------------------------------------------
"          key bind                                         <<<
"--------------------------------------------------------------
vnoremap x "_x
nnoremap x "_x
" nnoremap 1 ^
" nnoremap 2 $

" buffer  
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
nnoremap bd :bd<CR>
" nnoremap <silent> 9 :bprev<CR>
" noremap <silent> 0 :bnext<CR>

" window
nnoremap ss :<C-u>sp<CR><C-w>j
nnoremap sv :<C-u>vs<CR><C-w>l
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h

" replace
nnoremap \ :%s///g<LEFT><LEFT><LEFT>

" nohlsearch + <C-l>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" auto complete
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>
" inoremap ' ''<LEFT>
" inoremap " ""<LEFT>

" insert
inoremap <silent> jj <esc>
imap <c-p> <up>
imap <c-n> <down>
imap <c-f> <right>
imap <c-b> <left>
imap <c-e> <end>
imap <c-d> <del>
imap <c-h> <bs>
" imap <c-a> <c-o>:call <sid>home()<cr>
" imap <c-k> <c-r>=<sid>kill()<cr>

" visual
vnoremap > >gv
vnoremap < <gv

" command line
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

"--------------------------------------------------------------
"          plugin manager                                   <<<
"-------------------------------------------------------------"
if &compatible
  set nocompatible
endif

" プラグインがインストールされるディレクトリ
let s:dein_dir = expand('~/.vim/bundles')

" dein.vim本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" tomlセット
let s:toml_dir=expand('~/.dein/')
let s:toml=s:toml_dir . 'dein.toml'
let s:toml_lazy=s:toml_dir . 'dein-lazy.toml'

" プラグインのロード
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  call dein#load_toml(s:toml)
  call dein#load_toml(s:toml_lazy, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

" インストールしていないプラグインがあればインストールを実行
if dein#check_install()
  call dein#install()
endif
" <<<"

"--------------------------------------------------------------
"          colorscheme                                      <<<
"--------------------------------------------------------------
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax on
colorscheme onedark
" <<<"
