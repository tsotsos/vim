" Nvim as default
let g:vim_bootstrap_editor = "nvim"

" GENERAL CONFIGTURATION

"" Encoding
set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8  " ensure utf-8
set bomb
set binary
set ttyfast
"" Tabs. May be overriten by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set mousemodel=popup
set guioptions=egmrti
set gfn=Monospace\ 14
set showmatch
set textwidth=80
"" Map leader to ,
let mapleader=','
"" Enable hidden buffers
" set hidden
"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
"" Directories for swp files
set nobackup
set noswapfile

set fileformats=unix,dos,mac
syntax on
set ruler
set number "show line numbers
set numberwidth=4 "Line number max width
set list listchars=tab:\⟶\ ,trail:·,space:\  "change whitespace symbols
" set list listchars=tab:\⟶\ ,trail:·,space:· "change whitespace symbols
set cursorline "highlights current cursorline
:hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

" Remap for splits navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

call plug#begin('~/.vim/plugged')
" Basic plugins
Plug 'ryanoasis/vim-devicons' " Glyphs for files etc
Plug 'tpope/vim-fugitive' "Git
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


"*****************************************************************************
"" Abbreviations
"*****************************************************************************
"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

" grep.vim
nnoremap <silent> <leader>f :Rgrep<CR>
let Grep_Default_Options = '-IR'
let Grep_Skip_Files = '*.log *.db'
let Grep_Skip_Dirs = '.git node_modules'

" vimshell.vim
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
let g:vimshell_prompt =  '$ '

" terminal emulation
if g:vim_bootstrap_editor == 'nvim'
  nnoremap <silent> <leader>sh :terminal<CR>
else
  nnoremap <silent> <leader>sh :VimShellCreate<CR>
endif

"*****************************************************************************
"" Functions
"*****************************************************************************
if !exists('*s:setupWrapping')
  function s:setupWrapping()
    set wrap
    set wm=2
    set textwidth=79
  endfunction
endif

function GeneralSyntax()
	execute "set colorcolumn=" . join(range(81,335), ',')
    let &colorcolumn="80,".join(range(120,999),",")
	" Highlight trailing spaces
	" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
	highlight ExtraWhitespace ctermbg=red guibg=#ff6961
	match ExtraWhitespace /\s\+$/
	autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
	autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
	autocmd InsertLeave * match ExtraWhitespace /\s\+$/
	autocmd BufWinLeave * call clearmatches()
endfunction

"" Autocmd Rules
"*****************************************************************************

"" Remember cursor position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

"" txt
augroup vimrc-wrapping
  autocmd!
  autocmd BufRead,BufNewFile *.txt call s:setupWrapping()
augroup END
set autoread

"" true colors
execute "set t_8f=\e[38;2;%lu;%lu;%lum"
execute "set t_8b=\e[48;2;%lu;%lu;%lum"

" General Syntax Rules
call GeneralSyntax()
