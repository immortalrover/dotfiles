"  __  ____   ____     _____ __  __ ____   ____ 
" |  \/  \ \ / /\ \   / /_ _|  \/  |  _ \ / ___|
" | |\/| |\ V /  \ \ / / | || |\/| | |_) | |    
" | |  | | | |    \ V /  | || |  | |  _ <| |___ 
" |_|  |_| |_|     \_/  |___|_|  |_|_| \_\\____|
"                                               

" ==================== Editor behavior ====================
let &t_ut=''
" set number
" set cursorline
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set scrolloff=4
set ignorecase
set smartcase
set virtualedit=block

" ==================== Basic Mappings ====================
let mapleader= " "
nnoremap <c-q> :q<CR>
nnoremap <c-s> :w<CR>
" Insert Key
noremap k i
noremap K I
noremap l o
noremap L O

" insert a pair of {} and go to the next line
inoremap <c-h> <ESC>A{}<ESC>i<CR><ESC>ko

" ==================== Cursor Movement ====================
" New cursor movement (the default arrow keys are used for resizing windows)
"     ^
"     i
" < n   o >
"     e
"     v
noremap <silent> i k
noremap <silent> n h
noremap <silent> e j
noremap <silent> o l
" U/E keys for 5 times u/e (faster navigation)
noremap <silent> I 5k
noremap <silent> E 5j
" N key: go to the start of the line
noremap <silent> N 0
" I key: go to the end of the line
noremap <silent> O $
" Faster in-line navigation
noremap W 5w
noremap B 5b
" Ctrl + U or E will move up/down the view port without moving the cursor
noremap <C-E> 5<C-y>
noremap <C-I> 5<C-e>

" ==================== Window management ====================
" Use <space> + new arrow keys for moving the cursor around windows
noremap <LEADER>w <C-w>w
noremap <LEADER>i <C-w>k
noremap <LEADER>e <C-w>j
noremap <LEADER>n <C-w>h
noremap <LEADER>o <C-w>l
noremap qf <C-w>o
" Disable the default s key
noremap s <nop>
" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap si :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap se :set splitbelow<CR>:split<CR>
noremap sn :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap so :set splitright<CR>:vsplit<CR>
" Place the two screens up and down
noremap sh <C-w>t<C-w>K
" Place the two screens side by side
noremap sv <C-w>t<C-w>H
" Rotate screens
noremap srh <C-w>b<C-w>K
noremap srv <C-w>b<C-w>H
