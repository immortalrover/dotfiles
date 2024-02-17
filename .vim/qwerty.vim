nnoremap J 5j
nnoremap K 5k

nnoremap <silent> T :call ShowDocumentation()<CR>
  " Show hover when provider exists, fallback to vim's builtin behavior.
  function! ShowDocumentation()
    if CocAction('hasProvider', 'hover')
      call CocActionAsync('definitionHover')
    else
      call feedkeys('T', 'in')
    endif
  endfunction
