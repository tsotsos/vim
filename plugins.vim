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
    "" Comments
    "+deactivated due to bug with linux version of vim-doge
    "Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
    "" Vim Session
    Plug 'xolox/vim-misc'
    Plug 'xolox/vim-session'
    "" Go plugins
    Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}
    Plug 'mdempsky/gocode', {'rtp': 'nvim/'}
    "" Python Plugins
    Plug 'klen/python-mode'
    Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' } " Comments
    "" C and C++
    Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}

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

"" Session management
if &runtimepath =~ 'vim-session'
    let g:session_directory = "~/.vim/session"
    let g:session_autoload = "no"
    let g:session_autosave = "no"
    let g:session_command_aliases = 1
endif

"" Languages customizations
source ~/.vim/golang.vim
source ~/.vim/python.vim

