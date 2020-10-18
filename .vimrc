"" Install vim plug if not exists.
let vimplug_exists=expand('~/.vim/autoload/plug.vim')
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
source ~/.vim/general.vim

"" Import functions
source ~/.vim/functions.vim

"" General Syntax Rules
call GeneralSyntax()

"" Import Plugins
source ~/.vim/plugins.vim

"" Theme
colorscheme dracula
