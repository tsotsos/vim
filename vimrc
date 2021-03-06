let VIMDIR=$VIMDIR
let PLUGDIR= VIMDIR.'/autoload/plug.vim'
"" Install vim plug if not exists.
let vimplug_exists=expand(PLUGDIR)
let curl_exists=expand('curl')
if !filereadable(vimplug_exists)
  if !executable(curl_exists)
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent exec "!"curl_exists" -fLo " . shellescape(vimplug_exists) . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

"" Set default editor NeoVim
let g:vim_bootstrap_editor = "nvim"

"" Import General Rules
source $VIMDIR/general.vim

"" Import Plugins
source $VIMDIR/plugins.vim

"" Views Customization
source $VIMDIR/views.vim

"" Customized themes etc.
if filereadable(VIMDIR.'/custom.vim')
    source $VIMDIR/custom.vim
endif
