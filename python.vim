if &runtimepath =~ 'vim-python'
    au BufWriteCmd *.py write || :PymodeLint
endif
