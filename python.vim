autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
if &runtimepath =~ 'vim-python'
    au BufWriteCmd *.py write || :PymodeLintAuto
endif

" python docstring
if &runtimepath =~ 'vim-pydocstring'
    let g:pydocstring_doq_path = '~/.local/bin/doq'
    let g:pydocstring_formatter = 'google'
    nmap <silent> <leader>d <Plug>(pydocstring)
endif

