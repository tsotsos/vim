"" Closes any netrw buffers.
function! s:close_explorer()
    for i in range(1, bufnr('$'))
        if getbufvar(i, '&filetype') == "netrw"
            silent exe 'bdelete! ' . i
        endif
    endfor
endfunction
"" Netrw 
let g:netrw_banner = 0
let g:netrw_liststyle = 4
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20
let g:netrw_preview = 1

"" Tagbar
let g:tagbar_position = 'leftabove vertical'
let g:tagbar_compact = 1


"" Handles netrw and tagbar toggle
function! ToggleNetrwTagbar()
    let Netrw_close = (bufwinnr('netrw') == -1) 
    let Tagbar_close   = (bufwinnr('__Tagbar__') == -1) 
    TagbarToggle
    :Lexplore
    if Netrw_close && Tagbar_close
        wincmd K
        wincmd b
        wincmd L
        wincmd h
        exe 'vertical resize 25'
        wincmd p " helps keeping focus on current buffer.
    endif
endfunction

nmap <silent> <F2> :call ToggleNetrwTagbar()<CR>
nmap <silent> <leader>e :Lexplore<CR>
nmap <silent> <leader>t :TagbarToggle<CR>
