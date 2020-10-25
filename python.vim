autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
if &runtimepath =~ 'vim-python'
    au BufWriteCmd *.py write || :PymodeLintAuto
endif
if &runtimepath =~ 'vim-doge'
    let g:doge_doc_standard_python = 'google'
endif

