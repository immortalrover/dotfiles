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

" ===================   Plug Manager  =====================
call plug#begin('~/.vim/plugged')
Plug 'amadeus/vim-convert-color-to'
Plug 'ap/vim-css-color'
Plug 'img-paste-devs/img-paste.vim'
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'vim-autoformat/vim-autoformat'
Plug 'sheerun/vim-polyglot'
call plug#end()

inoremap <silent><expr> <ENTER> coc#pum#visible() ? "<ESC>a" : "<ENTER>" 
inoremap <silent><expr> <S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)

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

autocmd FileType json syntax match Comment +\/\/.\+$+
autocmd FileType markdown let g:PasteImageFunction = 'g:MarkdownPasteImage'
autocmd FileType markdown,tex nmap <buffer><silent> P :call mdip#MarkdownClipboardImage()<CR>
autocmd FileType tex let g:PasteImageFunction = 'g:LatexPasteImage'
autocmd FileType typescriptreact,typescript setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType vim,tex let b:autoformat_autoindent=0
au FileType html let b:coc_root_patterns = ['tailwind.config.ts']

map <C-/> :Commentary<CR>

" =================== Keyboard layout =====================
" if you want to use Colemak layout, please delete the " at the beginning
" source ~/.vim/colemak.vim
source ~/.vim/qwerty.vim

