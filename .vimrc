set background=dark
colorscheme ir_black
set backspace=indent,eol,start

syntax on
:set nu
autocmd! bufwritepost .vimrc source ~/.vimrc
set nobackup  
set noswapfile
set history=64	
set showcmd
set ruler
set incsearch
set hlsearch
set ignorecase smartcase
set nowrapscan
set magic
"当一行文字很长时取消换行
"set nowrap

" Switch syntax highlighting on, when the terminal has colors
if &t_Co > 2 || has("gui_running")
   syntax on
endif
if has("gui_running")
	set go-=T
	set guifont=Monaco:h14
	set lines=100 columns=200
endif
set enc=utf-8
set fenc=utf-8
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

set tabstop=4
set shiftwidth=4
set autoindent
set expandtab
set softtabstop=4
set bsdir=buffer
set autochdir

set laststatus=2
set mouse=a
set autoread

let mapleader = ","
let g:mapleader = ","
nmap <leader>w :w!<cr>
nmap <leader>q :wq<cr>
nmap <leader>f :find<cr>
map <leader>s :source ~/.vimrc<cr>
map <leader>e :e ~/.vimrc<cr>


filetype plugin indent on

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"使用Vundle来管理Vundle
Bundle 'gmarik/vundle'

Bundle 'YouCompleteMe'
Bundle 'css3-syntax'
Bundle 'markdown'
Bundle 'evanmiller/nginx-vim-syntax'
Bundle 'slim'
Bundle 'coffee-script'
Bundle 'LaTeX-Box'


"PowerLine插件 状态栏增强展示
Bundle 'Lokaltog/vim-powerline'
"vim有一个状态栏 加上powline则有两个状态栏
set laststatus=2
set t_Co=256
let g:Powline_symbols='fancy'

"Vundle配置必须 开启插件
filetype plugin indent on
