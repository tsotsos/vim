call plug#begin('~/.vim/plugged')
    Plug 'tpope/vim-fugitive' "Git
    Plug 'tpope/vim-eunuch' " File operations
    Plug 'tpope/vim-surround' "Surround tags
    Plug 'terryma/vim-multiple-cursors' "Multiple cursors
    Plug 'ryanoasis/vim-devicons' " Glyphs for files etc
    Plug 'airblade/vim-gitgutter' " Gitbar
    Plug 'dracula/vim' "ColorScheme
    Plug 'vim-airline/vim-airline' " Bar and more
    Plug 'vim-airline/vim-airline-themes' "Airline themes

"" Go plugins
    Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}
    Plug 'mdempsky/gocode', {'rtp': 'nvim/'}

"" Python Plugins
    Plug 'klen/python-mode'
    Plug 'davidhalter/jedi-vim'
    Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' } " python docstring
    let g:pydocstring_doq_path = '~/.local/bin/doq'
    let g:pydocstring_formatter = 'google'

call plug#end()

"" GitGutter customizations
if &runtimepath =~ 'vim-gitgutter'
    set updatetime=100
endif

"" Airline customizations
if &runtimepath =~ 'vim-airline'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '>'
    let g:airline#extensions#tabline#formatter = 'unique_tail'
    let g:airline#extensions#syntastic#enabled = 1
    let g:airline#extensions#branch#enabled = 1
    let g:airline#extensions#tagbar#enabled = 1
    let g:airline_skip_empty_sections = 1
endif


