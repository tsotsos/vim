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
set cursorline "highlights current cursorline
:hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

"" true colors
execute "set t_8f=\e[38;2;%lu;%lu;%lum"
execute "set t_8b=\e[48;2;%lu;%lu;%lum"

"" Abbreviations
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

" Keyboard Mappings

" Remap for splits navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Remap Tabs navigation
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>

