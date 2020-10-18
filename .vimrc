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
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "fuzzy finder

" Latex
Plug 'lervag/vimtex'
let g:vimtex_compiler_progname = 'nvr'
let g:tex_flavor='latex'
let g:vimtex_compiler_latexmk = { 
        \ 'executable' : 'latexmk',
        \ 'options' : [ 
        \   '-xelatex',
        \   '-file-line-error',
        \   '-synctex=1',
        \   '-interaction=nonstopmode',
        \ ],
        \}

" Nerd Tree
Plug 'preservim/nerdtree'

set updatetime=100 "update gitbar frequency

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

" Python
Plug 'klen/python-mode'
Plug 'davidhalter/jedi-vim'
" Jedi stop autocomplete in favour of CoC.
let g:jedi#completions_enabled = 0
" python docstring
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }
let g:pydocstring_doq_path = '~/.local/bin/doq'
let g:pydocstring_formatter = 'google'

" Autocomplete Plugin
" Release.
Plug 'neoclide/coc.nvim', {'branch': 'release'} 
" Build from source
" Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
source ~/.vim/coc.config.vim " imports custom configuration from coc.config.vim
"Spellcheck
vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)
"Tagbar
Plug 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>

call plug#end()
filetype plugin indent on    " required
colorscheme dracula
