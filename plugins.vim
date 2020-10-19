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

"" Go configurations
if &runtimepath =~ 'vim-go'
    let g:go_fmt_command = "goimports" "Run goimports along gofmt on each save 
    let g:go_auto_type_info = 1        "Gets signature/type info for object
    let g:go_highlight_types = 1
    let g:go_highlight_fields = 1
    let g:go_highlight_functions = 1
    let g:go_highlight_function_calls = 1
    let g:go_highlight_extra_types = 1
    let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
    let g:go_metalinter_autosave = 1
    let g:go_metalinter_autosave_enabled = ['vet', 'golint']
    let g:go_metalinter_deadline = "5s"

endif
