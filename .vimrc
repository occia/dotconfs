set wildmenu
set ignorecase
set hlsearch
set incsearch
set confirm
set clipboard+=unnamed
syntax enable
syntax on
"colorscheme solarized 
colorscheme default
"set background=light
"set background=dark
set backspace=2
set showmatch
set matchtime=5
set laststatus=2
set autoindent
set smartindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set nu
set autoread
set magic
set cursorline
set cursorcolumn
" 基于缩进或语法进行代码折叠
set foldmethod=indent
"set foldmethod=syntax
"set foldmethod=manual
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax
" " 启动 vim 时关闭折叠代码
set nofoldenable
"set t_Co=256


"
"
"
let mapleader = ';'
nnoremap <Enter> <C-w>
nnoremap <Enter>s :split<cr>
nnoremap <Enter>v :vsplit<cr>
nnoremap <Enter>c :close<cr>
nnoremap <Enter>o :only<cr>
nnoremap <Leader>w :w<cr> 
nnoremap <Leader>q :q
nnoremap <Space> $

set encoding=utf-8
"set guifont=Consolas:h10

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


"
" let Vundle manage Vundle
" required! 
Plugin 'VundleVim/Vundle.vim'


"
"
" My bundles ere:
" 
Bundle 'Lokaltog/vim-easymotion'
Plugin 'bling/vim-airline'
Bundle "scrooloose/syntastic"
Bundle 'scrooloose/nerdtree'
Bundle 'fholgado/minibufexpl.vim'
"Bundle 'SuperTab'
"Bundle 'airblade/vim-gitgutter' 
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
Bundle 'scrooloose/nerdcommenter'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'vim-scripts/DrawIt'

call vundle#end()            " required
filetype plugin indent on    " required

filetype plugin on
filetype indent on     " required!

"
"   
" plugin settings


" Nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <F4> :NERDTreeToggle<CR>


let g:UltiSnipsExpandTrigger="<F3>"
let g:UltiSnipsJumpForwardTrigger="<C-2>"
let g:UltiSnipsJumpBackwardTrigger="<C-3>"
nnoremap <F3> :UltiSnipsAddFiletypes 
" let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir="/home/occia/.vim/bundle/ultisnips/UltiSnips"

" indent guides
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" " 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" " 色块宽度
let g:indent_guides_guide_size=1
" " 快捷键 i 开/关缩进可视化
nmap <Leader>i <Plug>IndentGuidesToggle

"GitGutter
"let g:gitgutter_sign_column_always = 1

"
"
" DrawIt 
nnoremap ddd :Dis

"
"
"minibuf
map <Tab> :MBEbn<cr>
map <S-Tab> :MBEbp<cr>

"
"
" user defined keys

let g:EasyMotion_leader_key='<Leader><Leader>' " define easymotion hotkey



"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"autocmd FileType c set omnifunc=ccomplete#Complete

inoremap <F1> <c-n>
inoremap <F2> <c-p>
