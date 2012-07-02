nnoremap <silent> <buffer> ]] :let &tabstop += 1 <CR> :echo 'tabstop =' &tabstop <CR>
nnoremap <silent> <buffer> [[ :let &tabstop -= &tabstop > 1 ? 1 : 0 <CR> :echo 'tabstop =' &tabstop <CR>
