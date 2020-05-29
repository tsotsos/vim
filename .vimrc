" Nvim as default
let g:vim_bootstrap_editor = "nvim"

" GENERAL CONFIGTURATION
source ~/.vim/general.vim "basic configuration for vim

" Import functions
source ~/.vim/functions.vim

" General Syntax Rules
call GeneralSyntax()

" Plugins
call plug#begin('~/.vim/plugged')
" Basic plugins
Plug 'tpope/vim-fugitive' "Git
Plug 'tpope/vim-eunuch' " File operations
Plug 'tpope/vim-surround' "Surround tags
Plug 'terryma/vim-multiple-cursors' "Multiple cursors
Plug 'ryanoasis/vim-devicons' " Glyphs for files etc
Plug 'airblade/vim-gitgutter' " Gitbar
Plug 'dracula/vim' "ColorScheme
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" General Plugin settings
set updatetime=100 "update gitbar frequency
nmap <F8> :TagbarToggle<CR> " map tagbar toggle

" Autocomplete Plugin
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
source ~/.vim/coc.config.vim " imports custom configuration from coc.config.vim

" Airline
Plug 'vim-airline/vim-airline' " Bar and more
Plug 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '>'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

" Go Lang
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}
Plug 'mdempsky/gocode', {'rtp': 'nvim/'}

call plug#end()
filetype plugin indent on    " required

colorscheme dracula

