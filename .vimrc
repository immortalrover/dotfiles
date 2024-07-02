"  __  ____   ____     _____ __  __ ____   ____ 
" |  \/  \ \ / /\ \   / /_ _|  \/  |  _ \ / ___|
" | |\/| |\ V /  \ \ / / | || |\/| | |_) | |    
" | |  | | | |    \ V /  | || |  | |  _ <| |___ 
" |_|  |_| |_|     \_/  |___|_|  |_|_| \_\\____|
"                                               

" ==================== Editor behavior ====================
filetype plugin indent on
filetype plugin on
let &t_ut=''
" set cursorline
set autoindent
set backspace=indent,eol,start
set clipboard=autoselect
set encoding=utf-8
set ignorecase
set nobackup
set nocompatible
set noexpandtab
set nowritebackup
set number
set scrolloff=4
set shiftwidth=4
set showcmd
set smartcase
set softtabstop=4
set tabstop=4
set updatetime=300
set virtualedit=block
set tags=./tags

" ===================   Plug Manager  =====================
call plug#begin('~/.vim/plugged')
Plug 'amadeus/vim-convert-color-to'
Plug 'ap/vim-css-color'
Plug 'img-paste-devs/img-paste.vim'
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
Plug 'jiangmiao/auto-pairs'
Plug 'lervag/vimtex'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-autoformat/vim-autoformat'
Plug 'vim-scripts/loremipsum'
Plug 'preservim/tagbar'
Plug 'tpope/vim-projectionist'
call plug#end()

inoremap <silent><expr> <ENTER> coc#pum#visible() ? coc#_select_confirm() : "<ENTER>" 
inoremap <silent><expr> <S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <F8> :TagbarToggle<CR>
" nnoremap <C-]> :tag<CR>
" nnoremap <C-o> :pop<CR>
nnoremap <silent> <C-n> :tnext<CR>
nnoremap <silent> <C-p> :tprev<CR>


"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_python = 1
"let g:instant_markdown_slow = 1
"let g:instant_markdown_theme = 'dark'
au BufWrite * :Autoformat
let g:autoformat_autoindent = 0
let g:autoformat_remove_trailing_spaces = 0
let g:autoformat_retab = 0
let g:instant_markdown_allow_external_content = 0
let g:instant_markdown_allow_unsafe_content = 1
let g:instant_markdown_autoscroll = 0
let g:instant_markdown_autostart = 0
let g:instant_markdown_mathjax = 1
let g:instant_markdown_mermaid = 1
let g:instant_markdown_open_to_the_world = 1
let g:instant_markdown_port = 8888
let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_method = 'latexmk'


autocmd FileType json syntax match Comment +\/\/.\+$+
autocmd FileType markdown let g:PasteImageFunction = 'g:MarkdownPasteImage'
autocmd FileType markdown,tex nmap <buffer><silent> P :call mdip#MarkdownClipboardImage()<CR>
autocmd FileType tex let g:PasteImageFunction = 'g:LatexPasteImage'
autocmd FileType typescriptreact,typescript setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType verilog setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType vim,tex let b:autoformat_autoindent=0
autocmd FileType html let b:coc_root_patterns = ['package.json']
autocmd BufReadPost * if filereadable("tags") | set tags=./tags | endif

map <C-/> :Commentary<CR>

" =================== Keyboard layout =====================
" if you want to use Colemak layout, please delete the " at the beginning
" source ~/.vim/colemak.vim
source ~/.vim/qwerty.vim
source ~/.vim/color.vim 

