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

    "" Comments for programming languages
    Plug 'kkoomen/vim-doge', {'do': { -> doge#install() } }

    "" Vim debugger and Autocomplete
    Plug 'puremourning/vimspector'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    "" Tag bar and files tree
    Plug 'majutsushi/tagbar'

    "" Vim Session
    Plug 'xolox/vim-misc'
    Plug 'xolox/vim-session'

    "" Go plugins
    Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}
    Plug 'mdempsky/gocode', {'rtp': 'nvim/'}

    "" Python Plugins
    Plug 'klen/python-mode'

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

"" Debugger
if &runtimepath =~ 'vimspector'
    let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools', 'CodeLLDB', 'netcoredbg', 'vscode-go', 'vscode-php-debug', 'debugger-for-chrome' ]
    let g:vimspector_enable_mappings = 'HUMAN'
endif

if &runtimepath =~ 'coc.nvim'
    source $VIMDIR/coc.config.vim " imports custom configuration from coc.config.vim
    "Spellcheck
    vmap <leader>a <Plug>(coc-codeaction-selected)
    nmap <leader>a <Plug>(coc-codeaction-selected)
    let g:coc_global_extensions = [
      \'coc-markdownlint',
      \'coc-highlight',
      \'coc-go',
      \'coc-python',
      \'coc-explorer',
      \'coc-cmake', 
      \'coc-css',
      \'coc-lists',
      \'coc-lsp-wl',
      \'coc-phpls',
      \'coc-xml',
      \'coc-pairs',
      \'coc-yaml',
      \'coc-json',
      \'coc-actions',
      \'coc-clangd',
      \'coc-emmet',
      \'coc-java',
      \'coc-perl',
      \'coc-sql',
      \'coc-texlab',
      \'coc-cfn-lint',
      \'coc-jedi',
      \'coc-git'
      \]
endif

"" Languages customizations
source $VIMDIR/golang.vim
source $VIMDIR/python.vim

