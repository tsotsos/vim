"" Encoding
set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8
set bomb
set binary
set ttyfast

"" SpellCheck
set spelllang=en,el
set spellfile=spell/utf-8.add

"" Comments modification
"hi Comment guifg=#abefb5

"" Tabs. May be overwritten by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set mouse=a
set mousemodel=popup
set guioptions=egmrti
set showmatch
set textwidth=80

"" Change leader
let mapleader=','

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Directories for swp files
set nobackup
set noswapfile
set fileformats=unix,dos,mac
set autochdir "change to current dir automatically.

"" True Colors
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

" Remap Buffers navigation
nnoremap <C-Left> :bp<CR>
nnoremap <C-Right> :bn<CR>
nnoremap <C-j> :bp<CR>
nnoremap <C-k> :bn<CR>

" Remap Tabs navigation
noremap <C-Up> :tabnext<CR>
noremap <C-Down> :tabprevious<CR>
noremap <C-h> :tabprevious<CR>
noremap <C-l> :tabnext<CR>

"" Other
filetype plugin indent on    " required
"set nofoldenable    " disable folding
set foldmethod=manual
syntax on
set ruler
set number "show line numbers
set numberwidth=4 "Line number max width
set list listchars=tab:\⟶\ ,trail:·,space:\  "change whitespace symbols
set cursorline "highlights current cursorline
:hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

" Functions

if !exists('*s:setupWrapping')
  function s:setupWrapping()
    set wrap
    set wm=2
    set textwidth=79
  endfunction
endif

function Plugin_loaded(plugin)
  if isdirectory(g:plug_home . "/" . a:plugin . ".vim")
    \ && index(keys(g:plugs), a:plugin . '.vim') >=0
    return 1
  else
    return 0
  endif
endfunction

