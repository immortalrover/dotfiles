"  __  ____   ____     _____ __  __ ____   ____ 
" |  \/  \ \ / /\ \   / /_ _|  \/  |  _ \ / ___|
" | |\/| |\ V /  \ \ / / | || |\/| | |_) | |    
" | |  | | | |    \ V /  | || |  | |  _ <| |___ 
" |_|  |_| |_|     \_/  |___|_|  |_|_| \_\\____|
"                                               

" ==================== Editor behavior ====================
filetype plugin on
set nocompatible
set backspace=indent,eol,start
set autoindent
set showcmd
let &t_ut=''
set number
" set cursorline
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set scrolloff=4
set ignorecase
set smartcase
set virtualedit=block
set clipboard=autoselect

" ===================   Plug Manager  =====================
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-autoformat/vim-autoformat'
Plug 'ap/vim-css-color'
Plug 'jiangmiao/auto-pairs'
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
call plug#end()

inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <silent><expr> <S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
inoremap <silent><expr> <ENTER> coc#pum#visible() ? "<ESC>i" : "<ENTER>" 

au BufWrite * :Autoformat
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
"let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0
let g:instant_markdown_open_to_the_world = 1
let g:instant_markdown_allow_unsafe_content = 1
let g:instant_markdown_allow_external_content = 0
let g:instant_markdown_mathjax = 1
let g:instant_markdown_mermaid = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
let g:instant_markdown_autoscroll = 0
let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1
"let g:instant_markdown_theme = 'dark'

autocmd FileType vim,tex let b:autoformat_autoindent=0
autocmd FileType json syntax match Comment +\/\/.\+$+

" =================== Keyboard layout =====================
" if you want to use Colemak layout, please delete the " at the beginning
" source ~/.vim/colemak.vim
source ~/.vim/qwerty.vim

