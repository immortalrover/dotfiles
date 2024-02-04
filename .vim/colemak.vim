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
